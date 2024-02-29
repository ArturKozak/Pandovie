// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pandovie/data/api/tmdb_api/contracts/movie_details_contract/genres/genres_contract.dart';
import 'package:pandovie/data/api/tmdb_api/contracts/movie_details_contract/production_companies/production_companies_contract.dart';
import 'package:pandovie/data/api/tmdb_api/contracts/movie_details_contract/season_contract.dart';
import 'package:pandovie/data/api/tmdb_api/contracts/movie_details_contract/tv_episode_contract.dart';

part 'movie_details_contract.freezed.dart';
part 'movie_details_contract.g.dart';

@freezed
class MovieDetailsContract with _$MovieDetailsContract {
  const factory MovieDetailsContract({
    int? budget,
    List<GenresContract>? genres,
    double? revenue,
    double? runtime,
    String? status,
    @JsonKey(name: 'episode_run_time') List<int>? episodeRunTime,
    @JsonKey(name: 'in_production') bool? inProduction,
    @JsonKey(name: 'last_air_date') DateTime? lastAirDate,
    @JsonKey(name: 'next_episode_to_air') TVEpisodeContract? nextEpisode,
    @JsonKey(name: 'number_of_episodes') int? numberOfEpisodes,
    @JsonKey(name: 'number_of_seasons') int? numberOfSeasons,
    @JsonKey(name: 'seasons') List<SeasonContract?>? seasons,
    @JsonKey(name: 'production_companies')
    List<ProductionCompaniesContract>? productionCompanies,
  }) = _MovieDetailsContract;

  factory MovieDetailsContract.fromJson(Map<String, Object?> json) =>
      _$MovieDetailsContractFromJson(json);
}
