// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_episode_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TVEpisodeModelImpl _$$TVEpisodeModelImplFromJson(Map<String, dynamic> json) =>
    _$TVEpisodeModelImpl(
      id: json['id'] as int,
      name: json['name'] as String?,
      overview: json['overview'] as String?,
      airDate: json['airDate'] == null
          ? null
          : DateTime.parse(json['airDate'] as String),
      episodeNumber: json['episodeNumber'] as int?,
      runtime: json['runtime'] as int?,
      seasonNumber: json['seasonNumber'] as int?,
      stillImage:
          const Uint8ListConverter().fromJson(json['stillImage'] as List<int>?),
      stillPathRaw: json['stillPathRaw'] as String?,
    );

Map<String, dynamic> _$$TVEpisodeModelImplToJson(
        _$TVEpisodeModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'overview': instance.overview,
      'airDate': instance.airDate?.toIso8601String(),
      'episodeNumber': instance.episodeNumber,
      'runtime': instance.runtime,
      'seasonNumber': instance.seasonNumber,
      'stillImage': const Uint8ListConverter().toJson(instance.stillImage),
      'stillPathRaw': instance.stillPathRaw,
    };
