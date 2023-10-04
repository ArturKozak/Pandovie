part of 'search_movie_cubit.dart';

@freezed
class SearchMovieState with _$SearchMovieState {
  const factory SearchMovieState.initial() = _Initial;
  const factory SearchMovieState.searching() = _Searching;
  const factory SearchMovieState.detected(List<MovieModel> movies) = _Detected;
}
