// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieModelImpl _$$MovieModelImplFromJson(Map<String, dynamic> json) =>
    _$MovieModelImpl(
      id: json['id'] as int,
      title: json['title'] as String,
      popularity: (json['popularity'] as num).toDouble(),
      overview: json['overview'] as String,
      posterImage: const Uint8ListConverter()
          .fromJson(json['posterImage'] as List<int>?),
      posterImageRaw: json['posterImageRaw'] as String?,
      originalLanguage: json['originalLanguage'] as String?,
      voteCount: json['voteCount'] as int?,
      releaseDate: json['releaseDate'] == null
          ? null
          : DateTime.parse(json['releaseDate'] as String),
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
    );

Map<String, dynamic> _$$MovieModelImplToJson(_$MovieModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'popularity': instance.popularity,
      'overview': instance.overview,
      'posterImage': const Uint8ListConverter().toJson(instance.posterImage),
      'posterImageRaw': instance.posterImageRaw,
      'originalLanguage': instance.originalLanguage,
      'voteCount': instance.voteCount,
      'releaseDate': instance.releaseDate?.toIso8601String(),
      'voteAverage': instance.voteAverage,
      'originalTitle': instance.originalTitle,
      'adult': instance.adult,
      'budget': instance.budget,
      'genres': instance.genres,
      'revenue': instance.revenue,
      'runtime': instance.runtime,
      'status': instance.status,
      'productionCompanies': instance.productionCompanies,
    };
