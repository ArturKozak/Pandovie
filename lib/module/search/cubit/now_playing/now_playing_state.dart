part of 'now_playing_cubit.dart';

@freezed
class NowPlayingState with _$NowPlayingState {
  const factory NowPlayingState.initial() = _Initial;
  const factory NowPlayingState.detected(List<MovieModel> results) = _Detected;
}
