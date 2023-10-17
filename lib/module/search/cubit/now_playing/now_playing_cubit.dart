import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:pandovie/data/client/pandovie_client.dart';
import 'package:pandovie/data/models/movie_model.dart';

part 'now_playing_state.dart';
part 'now_playing_cubit.freezed.dart';

class NowPlayingCubit extends Cubit<NowPlayingState> {
  NowPlayingCubit() : super(const NowPlayingState.initial());

  Future<void> searchNowPlaying() async {
    final results = await GetIt.I<PandovieClient>().tmdbApi.getNowPlaying();

    if (results.isEmpty) {
      return emit(
        const NowPlayingState.initial(),
      );
    }

    emit(
      NowPlayingState.detected(
        results,
      ),
    );
  }
}
