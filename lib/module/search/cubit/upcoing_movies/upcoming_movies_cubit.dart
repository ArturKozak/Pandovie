import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:pandovie/data/client/pandovie_client.dart';
import 'package:pandovie/data/models/movie_model.dart';

part 'upcoming_movies_state.dart';
part 'upcoming_movies_cubit.freezed.dart';

class UpcomingMoviesCubit extends Cubit<UpcomingMoviesState> {
  UpcomingMoviesCubit() : super(const UpcomingMoviesState.initial());

  Future<void> searchUpcoming() async {
    final results = await GetIt.I<PandovieClient>().tmdbApi.getUpcoming();

    if (results.isEmpty) {
      return emit(
        const UpcomingMoviesState.initial(),
      );
    }

    emit(
      UpcomingMoviesState.detected(
        results,
      ),
    );
  }
}
