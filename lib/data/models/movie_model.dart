// ignore_for_file: invalid_annotation_target

import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pandovie/data/api/tmdb_api/contracts/movie_contract/movie_contract.dart';
import 'package:pandovie/data/api/tmdb_api/contracts/movie_details_contract/movie_details_contract.dart';
import 'package:pandovie/data/models/genres/genres_model.dart';
import 'package:pandovie/data/models/production_companies/production_companies_model.dart';
import 'package:pandovie/data/models/season/season_model.dart';
import 'package:pandovie/data/models/tv_episode/tv_episode_model.dart';
import 'package:pandovie/utils/uint_converter.dart';

part 'movie_model.freezed.dart';
part 'movie_model.g.dart';

@freezed
class MovieModel with _$MovieModel {
  static const idKey = 'id';
  static const titleKey = 'title';
  static const nameKey = 'name';
  static const isTVKey = 'isTV';
  static const firstAirDateKey = 'firstAirDate';
  static const popularityKey = 'popularity';
  static const overviewKey = 'overview';
  static const posterImageKey = 'posterImage';
  static const posterImageRawKey = 'posterImageRaw';
  static const originalLanguageKey = 'originalLanguage';
  static const voteCountKey = 'voteCount';
  static const releaseDateKey = 'releaseDate';
  static const voteAverageKey = 'voteAverage';
  static const originalTitleKey = 'originalTitle';
  static const adultKey = 'adult';
  static const budgetKey = 'budget';
  static const genresKey = 'genres';
  static const revenueKey = 'revenue';
  static const runtimeKey = 'runtime';
  static const statusKey = 'status';
  static const productionCompaniesKey = 'production_companies';
  static const episodeRunTimeKey = 'episodeRunTime';
  static const inProductionKey = 'inProduction';
  static const lastAirDateKey = 'lastAirDate';
  static const nextEpisodeKey = 'nextEpisode';
  static const numberOfEpisodesKey = 'numberOfEpisodes';
  static const numberOfSeasonsKey = 'numberOfSeasons';
  static const seasonsKey = 'seasons';

  const factory MovieModel({
    required int id,
    required double popularity,
    required String overview,
    String? title,
    String? name,
    @Uint8ListConverter() Uint8List? posterImage,
    String? posterImageRaw,
    String? originalLanguage,
    int? voteCount,
    DateTime? releaseDate,
    DateTime? firstAirDate,
    double? voteAverage,
    String? originalTitle,
    @Default(false) bool adult,
    int? budget,
    List<GenresModel>? genres,
    double? revenue,
    double? runtime,
    String? status,
    List<ProductionCompaniesModel>? productionCompanies,
    @Default(false) bool isTV,
    List<int>? episodeRunTime,
    bool? inProduction,
    DateTime? lastAirDate,
    TVEpisodeModel? nextEpisode,
    int? numberOfEpisodes,
    int? numberOfSeasons,
    List<SeasonModel?>? seasons,
  }) = _MovieModel;

  factory MovieModel.fromJson(Map<String, Object?> json) =>
      _$MovieModelFromJson(json);

  static MovieModel fromContract(MovieContract contract, bool isTV) {
    return MovieModel(
      id: contract.id,
      title: contract.title,
      name: contract.name,
      popularity: contract.popularity,
      overview: contract.overview,
      adult: contract.adult,
      isTV: isTV,
      originalLanguage: contract.originalLanguage,
      originalTitle: contract.originalTitle,
      posterImageRaw: contract.posterPath ?? contract.backdropPath,
      firstAirDate: contract.firstAirDate != null
          ? DateTime.tryParse(contract.firstAirDate!)
          : null,
      releaseDate: contract.releaseDate != null
          ? DateTime.tryParse(contract.releaseDate!)
          : null,
      voteAverage: contract.voteAverage,
      voteCount: contract.voteCount,
    );
  }

  static MovieModel fromDetailsContract(
    MovieDetailsContract contract,
    MovieModel model,
  ) {
    return model.copyWith(
        episodeRunTime: contract.episodeRunTime,
        inProduction: contract.inProduction,
        lastAirDate: contract.lastAirDate,
        nextEpisode: TVEpisodeModel.fromContract(contract.nextEpisode),
        numberOfEpisodes: contract.numberOfEpisodes,
        numberOfSeasons: contract.numberOfSeasons,
        seasons: contract.seasons
            ?.map(
              (e) => SeasonModel.fromContract(e),
            )
            .toList(),
        budget: contract.budget,
        genres: contract.genres
            ?.map(
              (e) => GenresModel.fromContract(e),
            )
            .toList(),
        revenue: contract.revenue,
        runtime: contract.runtime,
        status: contract.status,
        productionCompanies: contract.productionCompanies
            ?.map(
              (e) => ProductionCompaniesModel.fromContract(e),
            )
            .toList());
  }

  static MovieModel fromHive(Map<String, Object?> json) {
    final genresRawValue = json[genresKey] as List?;
    final productionCompaniesRawValue = json[productionCompaniesKey] as List?;
    final seasons = json[seasonsKey] as List?;

    return MovieModel(
      id: json[idKey] as int,
      title: json[titleKey] as String?,
      popularity: json[popularityKey] as double,
      name: json[nameKey] as String?,
      overview: json[overviewKey] as String,
      adult: json[adultKey] as bool,
      posterImageRaw: json[posterImageRawKey] as String?,
      originalLanguage: json[originalLanguageKey] as String?,
      originalTitle: json[originalTitleKey] as String?,
      posterImage: Uint8List.fromList(
        List.from(json[posterImageKey] as List<dynamic>),
      ),
      releaseDate: DateTime.tryParse(json[releaseDateKey] as String? ?? ''),
      firstAirDate: DateTime.tryParse(json[firstAirDateKey] as String? ?? ''),
      voteAverage: json[voteAverageKey] as double?,
      voteCount: json[voteCountKey] as int?,
      budget: json[budgetKey] as int?,
      revenue: json[revenueKey] as double?,
      runtime: json[runtimeKey] as double?,
      isTV: json[isTVKey] as bool,
      status: json[statusKey] as String?,
      genres: genresRawValue
          ?.map(
            (e) => GenresModel.fromHive(e),
          )
          .toList(),
      productionCompanies: productionCompaniesRawValue
          ?.map(
            (e) => ProductionCompaniesModel.fromHive(e),
          )
          .toList(),
      episodeRunTime: json[episodeRunTimeKey] as List<int>?,
      inProduction: json[inProductionKey] as bool?,
      lastAirDate: DateTime.tryParse(json[lastAirDateKey] as String? ?? ''),
      nextEpisode: TVEpisodeModel.fromHive(
          json[nextEpisodeKey] as Map<String, Object?>?),
      numberOfEpisodes: json[numberOfEpisodesKey] as int?,
      numberOfSeasons: json[numberOfSeasonsKey] as int?,
      seasons: seasons
          ?.map(
            (e) => SeasonModel.fromHive(e),
          )
          .toList(),
    );
  }
}
