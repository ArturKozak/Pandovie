// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'tv_episode_contract.freezed.dart';
part 'tv_episode_contract.g.dart';

@freezed
class TVEpisodeContract with _$TVEpisodeContract {
  const factory TVEpisodeContract({
    required int id,
    String? name,
    String? overview,
    @JsonKey(name: 'air_date') DateTime? airDate,
    @JsonKey(name: 'episode_number') int? episodeNumber,
    int? runtime,
    @JsonKey(name: 'season_number') int? seasonNumber,
    @JsonKey(name: 'still_path') String? stillPath,
  }) = _TVEpisodeContract;

  factory TVEpisodeContract.fromJson(Map<String, Object?> json) =>
      _$TVEpisodeContractFromJson(json);
}
