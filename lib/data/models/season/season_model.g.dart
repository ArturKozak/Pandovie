// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'season_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SeasonModelImpl _$$SeasonModelImplFromJson(Map<String, dynamic> json) =>
    _$SeasonModelImpl(
      id: json['id'] as int,
      name: json['name'] as String?,
      overview: json['overview'] as String?,
      airDate: json['airDate'] == null
          ? null
          : DateTime.parse(json['airDate'] as String),
      episodeNumber: json['episodeNumber'] as int?,
      voteAverage: (json['voteAverage'] as num?)?.toDouble(),
      seasonNumber: json['seasonNumber'] as int?,
      posterImage: const Uint8ListConverter()
          .fromJson(json['posterImage'] as List<int>?),
      posterPathRaw: json['posterPathRaw'] as String?,
    );

Map<String, dynamic> _$$SeasonModelImplToJson(_$SeasonModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'overview': instance.overview,
      'airDate': instance.airDate?.toIso8601String(),
      'episodeNumber': instance.episodeNumber,
      'voteAverage': instance.voteAverage,
      'seasonNumber': instance.seasonNumber,
      'posterImage': const Uint8ListConverter().toJson(instance.posterImage),
      'posterPathRaw': instance.posterPathRaw,
    };
