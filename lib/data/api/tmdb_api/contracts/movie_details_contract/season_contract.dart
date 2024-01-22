// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'season_contract.freezed.dart';
part 'season_contract.g.dart';

@freezed
class SeasonContract with _$SeasonContract {
  const factory SeasonContract({
    required int id,
    String? name,
    String? overview,
    @JsonKey(name: 'air_date') DateTime? airDate,
    @JsonKey(name: 'episode_count') int? episodeNumber,
    @JsonKey(name: 'vote_average') double? voteAverage,
    @JsonKey(name: 'season_number') int? seasonNumber,
    @JsonKey(name: 'poster_path') String? posterPath,
  }) = _SeasonContract;

  factory SeasonContract.fromJson(Map<String, Object?> json) =>
      _$SeasonContractFromJson(json);
}
