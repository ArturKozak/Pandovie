// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieModelImpl _$$MovieModelImplFromJson(Map<String, dynamic> json) =>
    _$MovieModelImpl(
      id: json['id'] as int,
      popularity: (json['popularity'] as num).toDouble(),
      overview: json['overview'] as String,
      title: json['title'] as String?,
      name: json['name'] as String?,
      posterImage: const Uint8ListConverter()
          .fromJson(json['posterImage'] as List<int>?),
      posterImageRaw: json['posterImageRaw'] as String?,
      originalLanguage: json['originalLanguage'] as String?,
      voteCount: json['voteCount'] as int?,
      releaseDate: json['releaseDate'] == null
          ? null
          : DateTime.parse(json['releaseDate'] as String),
      firstAirDate: json['firstAirDate'] == null
          ? null
          : DateTime.parse(json['firstAirDate'] as String),
      voteAverage: (json['voteAverage'] as num?)?.toDouble(),
      originalTitle: json['originalTitle'] as String?,
      adult: json['adult'] as bool? ?? false,
      budget: json['budget'] as int?,
      genres: (json['genres'] as List<dynamic>?)
          ?.map((e) => GenresModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      revenue: (json['revenue'] as num?)?.toDouble(),
      runtime: (json['runtime'] as num?)?.toDouble(),
      status: json['status'] as String?,
      productionCompanies: (json['productionCompanies'] as List<dynamic>?)
          ?.map((e) =>
              ProductionCompaniesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      isTV: json['isTV'] as bool? ?? false,
      episodeRunTime: (json['episodeRunTime'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      inProduction: json['inProduction'] as bool?,
      lastAirDate: json['lastAirDate'] == null
          ? null
          : DateTime.parse(json['lastAirDate'] as String),
      nextEpisode: json['nextEpisode'] == null
          ? null
          : TVEpisodeModel.fromJson(
              json['nextEpisode'] as Map<String, dynamic>),
      numberOfEpisodes: json['numberOfEpisodes'] as int?,
      numberOfSeasons: json['numberOfSeasons'] as int?,
      seasons: (json['seasons'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : SeasonModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MovieModelImplToJson(_$MovieModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'popularity': instance.popularity,
      'overview': instance.overview,
      'title': instance.title,
      'name': instance.name,
      'posterImage': const Uint8ListConverter().toJson(instance.posterImage),
      'posterImageRaw': instance.posterImageRaw,
      'originalLanguage': instance.originalLanguage,
      'voteCount': instance.voteCount,
      'releaseDate': instance.releaseDate?.toIso8601String(),
      'firstAirDate': instance.firstAirDate?.toIso8601String(),
      'voteAverage': instance.voteAverage,
      'originalTitle': instance.originalTitle,
      'adult': instance.adult,
      'budget': instance.budget,
      'genres': instance.genres,
      'revenue': instance.revenue,
      'runtime': instance.runtime,
      'status': instance.status,
      'productionCompanies': instance.productionCompanies,
      'isTV': instance.isTV,
      'episodeRunTime': instance.episodeRunTime,
      'inProduction': instance.inProduction,
      'lastAirDate': instance.lastAirDate?.toIso8601String(),
      'nextEpisode': instance.nextEpisode,
      'numberOfEpisodes': instance.numberOfEpisodes,
      'numberOfSeasons': instance.numberOfSeasons,
      'seasons': instance.seasons,
    };
