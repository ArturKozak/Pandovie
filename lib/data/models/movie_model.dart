// ignore_for_file: invalid_annotation_target

import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pandovie/data/api/tmdb_api/contracts/movie_contract/movie_contract.dart';
import 'package:pandovie/data/api/tmdb_api/contracts/movie_details_contract/movie_details_contract.dart';
import 'package:pandovie/data/models/genres/genres_model.dart';
import 'package:pandovie/data/models/production_companies/production_companies_model.dart';
import 'package:pandovie/utils/uint_converter.dart';

part 'movie_model.freezed.dart';
part 'movie_model.g.dart';

@freezed
class MovieModel with _$MovieModel {
  static const idKey = 'id';
  static const titleKey = 'title';
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

  const factory MovieModel({
    required int id,
    required String title,
    required double popularity,
    required String overview,
    @Uint8ListConverter() Uint8List? posterImage,
    String? posterImageRaw,
    String? originalLanguage,
    int? voteCount,
    DateTime? releaseDate,
    double? voteAverage,
    String? originalTitle,
    @Default(false) bool adult,
    int? budget,
    List<GenresModel>? genres,
    double? revenue,
    double? runtime,
    String? status,
    List<ProductionCompaniesModel>? productionCompanies,
  }) = _MovieModel;

  factory MovieModel.fromJson(Map<String, Object?> json) =>
      _$MovieModelFromJson(json);

  static MovieModel fromContract(MovieContract contract) {
    return MovieModel(
      id: contract.id,
      title: contract.title,
      popularity: contract.popularity,
      overview: contract.overview,
      adult: contract.adult,
      originalLanguage: contract.originalLanguage,
      originalTitle: contract.originalTitle,
      posterImageRaw: contract.posterPath ?? contract.backdropPath,
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
      budget: contract.budget,
      genres: contract.genres
          .map(
            (e) => GenresModel.fromContract(e),
          )
          .toList(),
      revenue: contract.revenue,
      runtime: contract.runtime,
      status: contract.status,
      productionCompanies: contract.productionCompanies != null
          ? contract.productionCompanies!
              .map(
                (e) => ProductionCompaniesModel.fromContract(e),
              )
              .toList()
          : null,
    );
  }

  static MovieModel fromHive(Map<String, Object?> json) {
    final genresRawValue = json[genresKey] as List?;
    final productionCompaniesRawValue = json[productionCompaniesKey] as List?;

    return MovieModel(
      id: json[idKey] as int,
      title: json[titleKey] as String,
      popularity: json[popularityKey] as double,
      overview: json[overviewKey] as String,
      adult: json[adultKey] as bool,
      posterImageRaw: json[posterImageRawKey] as String?,
      originalLanguage: json[originalLanguageKey] as String?,
      originalTitle: json[originalTitleKey] as String?,
      posterImage: Uint8List.fromList(
        List.from(json[posterImageKey] as List<dynamic>),
      ),
      releaseDate: DateTime.tryParse(json[releaseDateKey] as String? ?? ''),
      voteAverage: json[voteAverageKey] as double?,
      voteCount: json[voteCountKey] as int?,
      budget: json[budgetKey] as int?,
      revenue: json[revenueKey] as double?,
      runtime: json[runtimeKey] as double?,
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
    );
  }
}
