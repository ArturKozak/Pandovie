// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'season_contract.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SeasonContractImpl _$$SeasonContractImplFromJson(Map<String, dynamic> json) =>
    _$SeasonContractImpl(
      id: json['id'] as int,
      name: json['name'] as String?,
      overview: json['overview'] as String?,
      airDate: json['air_date'] == null
          ? null
          : DateTime.parse(json['air_date'] as String),
      episodeNumber: json['episode_count'] as int?,
      voteAverage: (json['vote_average'] as num?)?.toDouble(),
      seasonNumber: json['season_number'] as int?,
      posterPath: json['poster_path'] as String?,
    );

Map<String, dynamic> _$$SeasonContractImplToJson(
        _$SeasonContractImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'overview': instance.overview,
      'air_date': instance.airDate?.toIso8601String(),
      'episode_count': instance.episodeNumber,
      'vote_average': instance.voteAverage,
      'season_number': instance.seasonNumber,
      'poster_path': instance.posterPath,
    };
