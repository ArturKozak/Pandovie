import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:pandovie/data/client/pandovie_client.dart';
import 'package:pandovie/data/models/movie_model.dart';
import 'package:pandovie/data/repositories/collection_repositories.dart';
import 'package:pandovie/module/root/cubit/root_cubit.dart';
import 'package:pandovie/utils/open_cubit/open_cubit_impl.dart';

part 'search_movie_cubit.freezed.dart';
part 'search_movie_state.dart';

class SearchMovieCubit extends Cubit<SearchMovieState> {
  SearchMovieCubit() : super(const SearchMovieState.initial());

  final _collectionRepo = GetIt.I<CollectionRepository>();

  Future<void> searchMoviesByQuery(String value) async {
    emit(const SearchMovieState.searching());

    final results = await GetIt.I<PandovieClient>().tmdbApi.getMoviesByQuery(
          query: value,
        );

    if (results.isEmpty) {
      return emit(
        const SearchMovieState.initial(),
      );
    }

    emit(
      SearchMovieState.detected(
        results,
      ),
    );
  }

  void addToCollection(MovieModel movie) {
    return _collectionRepo.add(movie);
  }

  void openDrawerMenu() {
    return OpenCubit.find<RootCubit>().openMenuDrawer();
  }

  void backToMain() {
    return emit(
      const SearchMovieState.initial(),
    );
  }

  @override
  Future<void> close() {
    OpenCubit.delete<SearchMovieCubit>();

    return super.close();
  }
}
