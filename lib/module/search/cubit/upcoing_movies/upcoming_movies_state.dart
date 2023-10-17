part of 'upcoming_movies_cubit.dart';

@freezed
class UpcomingMoviesState with _$UpcomingMoviesState {
  const factory UpcomingMoviesState.initial() = _Initial;
  const factory UpcomingMoviesState.detected(List<MovieModel> results) =
      _Detected;
}
