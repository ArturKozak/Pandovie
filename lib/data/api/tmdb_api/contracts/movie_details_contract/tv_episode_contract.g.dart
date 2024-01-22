// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_episode_contract.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TVEpisodeContractImpl _$$TVEpisodeContractImplFromJson(
        Map<String, dynamic> json) =>
    _$TVEpisodeContractImpl(
      id: json['id'] as int,
      name: json['name'] as String?,
      overview: json['overview'] as String?,
      airDate: json['air_date'] == null
          ? null
          : DateTime.parse(json['air_date'] as String),
      episodeNumber: json['episode_number'] as int?,
      runtime: json['runtime'] as int?,
      seasonNumber: json['season_number'] as int?,
      stillPath: json['still_path'] as String?,
    );

Map<String, dynamic> _$$TVEpisodeContractImplToJson(
        _$TVEpisodeContractImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'overview': instance.overview,
      'air_date': instance.airDate?.toIso8601String(),
      'episode_number': instance.episodeNumber,
      'runtime': instance.runtime,
      'season_number': instance.seasonNumber,
      'still_path': instance.stillPath,
    };
