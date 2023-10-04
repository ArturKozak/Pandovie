import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OpenCubit {
  static final OpenCubit _openCubit = OpenCubit._internal();

  factory OpenCubit() {
    return _openCubit;
  }

  OpenCubit._internal();

  // HashMap to link the instances to cubit names
  static final Map<String, Cubit> _mp = {};

  /// Provide an id to create multiple unique instances
  static T put<T extends Cubit>(
    T cubit, {
    String? id,
  }) {
    String key = _getKey(T, id);

    if (_mp.containsKey(key)) {
      return _mp[key] as T;
    }

    _mp[key] = cubit;

    return _mp[key] as T;
  }

  /// delete the instance of the cubit
  static void delete<T extends Cubit>({String? id}) {
    String key = _getKey(T, id);

    if (_mp.containsKey(key)) {
      _mp[key]?.close();

      _mp.remove(key);
    }
  }

  /// find an instance of a cubit
  static T find<T extends Cubit>({
    String? id,
    bool autoCreate = false,
    T? onAutoCreate,
  }) {
    String key = _getKey(T, id);

    if (_mp.containsKey(key)) {
      return _mp[key] as T;
    }

    if (autoCreate && onAutoCreate != null) {
      return put<T>(onAutoCreate);
    }

    throw ("Instance of Cubit:$T not found, please use OpenCubit().put($T()) to create an instance of this cubit");
  }

  static bool exists<T extends Cubit>({String? id}) => _mp.containsKey(
        _getKey(T, id),
      );

  /// generate the key to link instance
  static String _getKey(Type t, String? id) {
    return id == null ? t.toString() : t.toString() + id;
  }

  static T listen<T extends Cubit>(
    BuildContext context,
  ) {
    return BlocProvider.of<T>(context, listen: true);
  }
}
