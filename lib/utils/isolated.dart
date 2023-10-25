import 'dart:async';
import 'dart:isolate';

import 'package:ensure_initialized/ensure_initialized.dart';
import 'package:flutter/foundation.dart';
import 'package:uuid/uuid.dart';

/// This class allows to move the work of the service to an isolate.
///
/// To configure the service, the [handlerProvider] must be provided. It is
/// a static method or a top level function, as required by isolates.
/// See its description for explanation.
///
/// The main idea of communication:
/// 1. We send data to an isolate;
/// 2. The handler in the isolate processes it;
/// 3. The isolate returns some data.
///
/// Communication is done via [ReceivePort] and [SendPort]. Their configuration
/// is done in the [_isolateEntry] method.
abstract class Isolated<TEventType> with EnsureInitializedMixin {
  static const _eventKey = 'event';
  static const _dataKey = 'data';
  static const _idKey = 'id';
  static const _portKey = 'port';
  static const _handlerProviderKey = 'handlerProvider';
  static const _resultKey = 'resultKey';
  static const _errorKey = 'errorKey';

  final Map<String, Completer<dynamic>> _result = {};

  late final Isolate _isolate;
  late final SendPort _sendPort;

  String get debugName;

  /// [handlerProvider] is ran when an isolate is spawned. Its responsibility
  /// is to provide a method handler that will be executed on [run].
  ///
  /// The return value is a method that accepts [event] and [data].
  /// [event] is a classification of an event. It tells the handler what to do.
  /// In reality it is dynamic, so it can be anything. But the inheritor can
  /// specify it by settings <TEventType> when extending [Isolated].
  /// [data] is data passed as an argument. Ideally, it should be as primitive
  /// as possible (strings, ints, lists of strings etc).
  ///
  /// The idea of this method is to be able to create some configuration.
  /// An example from the [Encryptor] class:
  ///
  /// ```dart
  ///static Function(dynamic event, dynamic data) encryptorHandlerProvider() {
  ///  // This is the configuration.
  ///  // These things could be used in the handler.
  ///  final cryptor = DBCrypt();
  ///  final salt = cryptor.gensalt();
  ///
  ///  // This is the provided handler. As you see,
  ///  // [cryptor] and [salt] are used right in the handler.
  ///  return (event, data) {
  ///    if (event == EncryptorEvent.hash) {
  ///      final hashed = cryptor.hashpw(data, salt);
  ///
  ///      return hashed;
  ///    }
  ///
  ///    if (event == EncryptorEvent.check) {
  ///      final areEqual = cryptor.checkpw(data[_normalKey], data[_hashedKey]);
  ///
  ///      return areEqual;
  ///    }
  ///  };
  ///}
  /// ```
  Function(dynamic event, dynamic data) Function() handlerProvider;

  Isolated(this.handlerProvider) {
    _initIsolate();
  }

  /// This method receives answers from the isolate.
  /// The first statement with the [SendPort] is needed to get the send port
  /// of an isolate. Further, in the [run] method, we'll send data via it.
  ///
  /// Send port is sent back in the [_isolateEntry] method, see it.
  ///
  /// The statement with the map is the response from an isolate.
  /// There are three possible entries: `id`, `result` and `error`.
  /// By the `id` the needed completer is found.
  /// The completer completes with either the `result` or `error`.
  void _handleMessage(dynamic message) {
    if (message is SendPort) {
      _sendPort = message;
      initializedSuccessfully();
      return;
    }

    if (message is! Map) {
      return;
    }

    final id = message[_idKey];

    final completer = _result[id];

    if (completer == null) {
      throw Exception('No completer found for the given ID!');
    }

    if (message.containsKey(_errorKey)) {
      completer.completeError(message[_errorKey] as Object);
    } else {
      completer.complete(message[_resultKey]);
    }

    _result.remove(id);

    if (_result.isEmpty) {
      _isolate.pause(_isolate.pauseCapability);
    }
  }

  /// The initialization of the isolate itself.
  ///
  /// The first step is to configure receive and send ports. To do so, we create
  /// a [receivePort] and send its [sendPort] back to the [Isolated] level.
  /// Via this send port [Isolated] will communicate with the isolate.
  ///
  /// E.g. when [Isolated] will do [sendPort.send(message)], we'll get it so:
  /// ```dart
  /// receivePort.listen(
  ///   (message) async {
  ///   }
  /// );
  /// ```
  /// We also save the send port of the [Isolated]. Via this port we'll send
  /// the data back when the work is done. The [_handleMessage] will catch it.
  ///
  /// The second step is to configure the listener.
  /// Inside of it we retrieve three things:
  /// 1. `id` — is an `id` of the future that has to be completed.
  /// It is only used when sending results back so the [_handleMessage] method
  /// can end the future correctly.
  /// 2. `event` — type of an event (see [handlerProvider])
  /// 3. `data` — data to process (see [handlerProvider])
  ///
  /// Then we execute the handler and wait for the results
  /// ([handler] is the method provided by the [handlerProvider]).
  ///
  /// After [handler] execution is done, the results are sent back.
  static void _isolateEntry(dynamic message) {
    final receivePort = ReceivePort();

    final sendPort = message[_portKey];
    sendPort.send(receivePort.sendPort);

    final handler = message[_handlerProviderKey]();

    receivePort.listen(
      (message) async {
        final id = message[_idKey];
        final event = message[_eventKey];
        final data = message[_dataKey];

        try {
          final result = await handler(event, data);

          sendPort.send({_idKey: id, _resultKey: result});
        } on Exception catch (e) {
          sendPort.send({_idKey: id, _errorKey: e});

          // ignore: avoid_catching_errors
        } on Error catch (e) {
          sendPort.send({_idKey: id, _errorKey: e.toString()});
        }
      },
    );
  }

  /// Spawning and configuration of the isolate.
  ///
  /// The most important thing here (except for spawning) is configuring ports.
  /// The work is simillar to the [_isolateEntry]:
  /// 1. We're creating a [receivePort];
  /// 2. Starting to listen to it;
  /// 3. Sending its [sendPort] to the isolate.
  ///
  /// Along with the port, we also send the [handlerProvider].
  Future<void> _initIsolate() async {
    final receivePort = ReceivePort();
    final errorPort = ReceivePort();

    errorPort.listen((d) {
      if (kDebugMode) {
        print(d);
      }
    });

    receivePort.listen(_handleMessage);

    _isolate = await Isolate.spawn<Map>(
      _isolateEntry,
      {
        _portKey: receivePort.sendPort,
        _handlerProviderKey: handlerProvider,
      },
      onError: errorPort.sendPort,
      errorsAreFatal: false,
      debugName: debugName,
    );
  }

  /// Executes the isolate handler using [event] and [data].
  ///
  /// To make calls async, we must use [Completer]s.
  /// To support conqurrency, we must use multiple [Completer]s.
  /// The best thing to do so is to store them as a map {`id`: `Completer`}.
  ///
  /// The `id` parameter is passed to an isolate, and then back, so we know
  /// what exact [Completer] to complete with the results of the work.
  Future<T> run<T>(TEventType event, dynamic data) async {
    await ensureInitialized;

    final id = const Uuid().v1();
    final completer = Completer();

    _result.putIfAbsent(id, () => completer);

    _sendPort.send({_idKey: id, _eventKey: event, _dataKey: data});

    _isolate.resume(_isolate.pauseCapability!);

    final result = await completer.future;

    if (result is! T) {
      throw Exception(
        '''Expected result to be a ${T.runtimeType}, but was a ${result.runtimeType}''',
      );
    }

    return result;
  }

  void dispose() {
    _isolate.kill();
  }
}
