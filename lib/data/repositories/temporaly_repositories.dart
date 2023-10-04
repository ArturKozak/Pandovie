import 'dart:async';

import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:pandovie/data/models/movie_model.dart';

@lazySingleton
class TemporalyRepository {
  static const _boxName = 'temp_movies';

  final _onAllTempMoviesStreamController = StreamController<List<MovieModel>>();

  late final Box<MovieModel> _tempMoviesBox;

  final _tempMovies = <MovieModel>[];

  Stream<List<MovieModel>> get allTempMoviesStream =>
      _onAllTempMoviesStreamController.stream;

  List<MovieModel> get allTempMovies => _tempMovies;

  @PostConstruct()
  void init() {
    _tempMoviesBox = Hive.box<MovieModel>(
      name: _boxName,
      maxSizeMiB: 2048,
    );
  }

  @factoryMethod
  void add(
    MovieModel model,
  ) {
    _tempMoviesBox.put(model.id.toString(), model);

    _tempMovies.add(model);

    _onAllTempMoviesStreamController.add(_tempMovies);
  }

  @factoryMethod
  Future<void> edit(
    MovieModel model,
  ) async {
    final index = _tempMovies.indexWhere(
      (element) => element.id == model.id,
    );

    _tempMoviesBox.delete(
      model.id.toString(),
    );

    _tempMovies.removeAt(index);

    _tempMoviesBox.put(
      model.id.toString(),
      model,
    );

    _tempMovies.insert(index, model);

    _onAllTempMoviesStreamController.add(_tempMovies);
  }

  @factoryMethod
  void deleteAll() {
    _tempMoviesBox.clear();

    _tempMovies.clear();

    _onAllTempMoviesStreamController.add(_tempMovies);
  }
}
