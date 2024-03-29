import 'dart:async';

import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:pandovie/data/client/pandovie_client.dart';
import 'package:pandovie/data/models/movie_model.dart';

@lazySingleton
class CollectionRepository {
  static const _boxName = 'movies';

  final _onAllMoviesStreamController = StreamController<List<MovieModel>>();

  late final Box<MovieModel> _moviesBox;

  final _movies = <MovieModel>[];

  Stream<List<MovieModel>> get allMoviesStream =>
      _onAllMoviesStreamController.stream;

  List<MovieModel> get allMovies => _movies;

  @PostConstruct()
  void init() {
    _moviesBox = Hive.box<MovieModel>(
      name: _boxName,
      maxSizeMiB: 2048,
    );

    for (var i = 0; i < _moviesBox.length; i++) {
      final movie = _moviesBox.getAt(i);

      _movies.add(movie);
    }

    _onAllMoviesStreamController.add(_movies);
  }

  @factoryMethod
  Future<void> add(
    MovieModel model,
  ) async {
    final fullModel =
        await GetIt.I<PandovieClient>().tmdbApi.getMovieImages(model: model);

    _moviesBox.put(fullModel.id.toString(), fullModel);

    _movies.add(fullModel);

    _onAllMoviesStreamController.add(_movies);
  }

  @factoryMethod
  Future<void> edit(
    MovieModel model,
  ) async {
    final index = _movies.indexWhere(
      (element) => element.id == model.id,
    );

    _moviesBox.delete(
      model.id.toString(),
    );

    _movies.removeAt(index);

    _moviesBox.put(
      model.id.toString(),
      model,
    );

    _movies.insert(index, model);

    _onAllMoviesStreamController.add(_movies);
  }

  @factoryMethod
  void delete(
    MovieModel model,
  ) {
    _moviesBox.delete(
      model.id.toString(),
    );

    _movies.removeWhere((element) => element.id == model.id);

    _onAllMoviesStreamController.add(_movies);
  }

  bool checkIfContains(MovieModel model) {
    if (_movies.any((element) => element.id == model.id)) {
      return true;
    }

    return false;
  }
}
