// ignore_for_file: invalid_annotation_target

import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pandovie/data/api/tmdb_api/contracts/movie_details_contract/season_contract.dart';
import 'package:pandovie/utils/uint_converter.dart';

part 'season_model.freezed.dart';
part 'season_model.g.dart';

@freezed
class SeasonModel with _$SeasonModel {
  static const idKey = 'id';
  static const nameKey = 'name';
  static const overviewKey = 'overview';
  static const airDateKey = 'airDate';
  static const episodeNumberKey = 'episodeNumber';
  static const voteAverageKey = 'voteAverage';
  static const seasonNumberKey = 'seasonNumber';
  static const posterPathRawKey = 'posterPathRawKey';
  static const posterImageKey = 'posterImage';

  const factory SeasonModel({
    required int id,
    String? name,
    String? overview,
    DateTime? airDate,
    int? episodeNumber,
    double? voteAverage,
    int? seasonNumber,
    @Uint8ListConverter() Uint8List? posterImage,
    String? posterPathRaw,
  }) = _SeasonModel;

  factory SeasonModel.fromJson(Map<String, Object?> json) =>
      _$SeasonModelFromJson(json);

  static SeasonModel? fromContract(SeasonContract? contract) {
    if (contract == null) {
      return null;
    }

    return SeasonModel(
      id: contract.id,
      name: contract.name,
      overview: contract.overview,
      airDate: contract.airDate,
      episodeNumber: contract.episodeNumber,
      voteAverage: contract.voteAverage,
      seasonNumber: contract.seasonNumber,
      posterPathRaw: contract.posterPath,
    );
  }

  static SeasonModel fromHive(Map<String, Object?> json) {
    return SeasonModel(
      id: json[idKey] as int,
      name: json[nameKey] as String?,
      overview: json[overviewKey] as String?,
      airDate: DateTime.tryParse(
        json[airDateKey] as String? ?? '',
      ),
      episodeNumber: json[episodeNumberKey] as int?,
      voteAverage: json[voteAverageKey] as double?,
      seasonNumber: json[seasonNumberKey] as int?,
      posterPathRaw: json[posterPathRawKey] as String?,
      posterImage: Uint8List.fromList(
        List.from(json[posterImageKey] as List<dynamic>),
      ),
    );
  }
}
