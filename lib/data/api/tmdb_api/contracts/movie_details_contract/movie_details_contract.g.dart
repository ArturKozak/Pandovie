// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_details_contract.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieDetailsContractImpl _$$MovieDetailsContractImplFromJson(
        Map<String, dynamic> json) =>
    _$MovieDetailsContractImpl(
      budget: json['budget'] as int?,
      genres: (json['genres'] as List<dynamic>?)
          ?.map((e) => GenresContract.fromJson(e as Map<String, dynamic>))
          .toList(),
      revenue: (json['revenue'] as num?)?.toDouble(),
      runtime: (json['runtime'] as num?)?.toDouble(),
      status: json['status'] as String?,
      episodeRunTime: (json['episode_run_time'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      inProduction: json['in_production'] as bool?,
      lastAirDate: json['last_air_date'] == null
          ? null
          : DateTime.parse(json['last_air_date'] as String),
      nextEpisode: json['next_episode_to_air'] == null
          ? null
          : TVEpisodeContract.fromJson(
              json['next_episode_to_air'] as Map<String, dynamic>),
      numberOfEpisodes: json['number_of_episodes'] as int?,
      numberOfSeasons: json['number_of_seasons'] as int?,
      seasons: (json['seasons'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : SeasonContract.fromJson(e as Map<String, dynamic>))
          .toList(),
      productionCompanies: (json['production_companies'] as List<dynamic>?)
          ?.map((e) =>
              ProductionCompaniesContract.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MovieDetailsContractImplToJson(
        _$MovieDetailsContractImpl instance) =>
    <String, dynamic>{
      'budget': instance.budget,
      'genres': instance.genres,
      'revenue': instance.revenue,
      'runtime': instance.runtime,
      'status': instance.status,
      'episode_run_time': instance.episodeRunTime,
      'in_production': instance.inProduction,
      'last_air_date': instance.lastAirDate?.toIso8601String(),
      'next_episode_to_air': instance.nextEpisode,
      'number_of_episodes': instance.numberOfEpisodes,
      'number_of_seasons': instance.numberOfSeasons,
      'seasons': instance.seasons,
      'production_companies': instance.productionCompanies,
    };
