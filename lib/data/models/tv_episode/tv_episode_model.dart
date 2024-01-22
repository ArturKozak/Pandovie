// ignore_for_file: invalid_annotation_target

import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pandovie/data/api/tmdb_api/contracts/movie_details_contract/tv_episode_contract.dart';
import 'package:pandovie/utils/uint_converter.dart';

part 'tv_episode_model.freezed.dart';
part 'tv_episode_model.g.dart';

@freezed
class TVEpisodeModel with _$TVEpisodeModel {
  static const idKey = 'id';
  static const nameKey = 'name';
  static const overviewKey = 'overview';
  static const airDateKey = 'airDate';
  static const episodeNumberKey = 'episodeNumber';
  static const runtimeKey = 'runtime';
  static const seasonNumberKey = 'seasonNumber';
  static const stillPathRawKey = 'stillPathRaw';
  static const stillImageKey = 'stillImage';

  const factory TVEpisodeModel({
    required int id,
    String? name,
    String? overview,
    DateTime? airDate,
    int? episodeNumber,
    int? runtime,
    int? seasonNumber,
    @Uint8ListConverter() Uint8List? stillImage,
    String? stillPathRaw,
  }) = _TVEpisodeModel;

  factory TVEpisodeModel.fromJson(Map<String, Object?> json) =>
      _$TVEpisodeModelFromJson(json);

  static TVEpisodeModel? fromContract(TVEpisodeContract? contract) {
    if (contract == null) {
      return null;
    }

    return TVEpisodeModel(
      id: contract.id,
      name: contract.name,
      overview: contract.overview,
      airDate: contract.airDate,
      episodeNumber: contract.episodeNumber,
      runtime: contract.runtime,
      seasonNumber: contract.seasonNumber,
      stillPathRaw: contract.stillPath,
    );
  }

  static TVEpisodeModel? fromHive(Map<String, Object?>? json) {
    if (json == null) {
      return null;
    }

    return TVEpisodeModel(
      id: json[idKey] as int,
      name: json[nameKey] as String?,
      overview: json[overviewKey] as String?,
      airDate: DateTime.tryParse(
        json[airDateKey] as String? ?? '',
      ),
      episodeNumber: json[episodeNumberKey] as int?,
      runtime: json[runtimeKey] as int?,
      seasonNumber: json[seasonNumberKey] as int?,
      stillPathRaw: json[stillPathRawKey] as String?,
      stillImage: Uint8List.fromList(
        List.from(json[stillImageKey] as List<dynamic>),
      ),
    );
  }
}
