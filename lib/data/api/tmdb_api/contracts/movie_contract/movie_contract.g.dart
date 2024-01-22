// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_contract.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieContractImpl _$$MovieContractImplFromJson(Map<String, dynamic> json) =>
    _$MovieContractImpl(
      id: json['id'] as int,
      popularity: (json['popularity'] as num).toDouble(),
      overview: json['overview'] as String,
      title: json['title'] as String?,
      name: json['name'] as String?,
      firstAirDate: json['first_air_date'] as String?,
      posterPath: json['poster_path'] as String?,
      originalLanguage: json['original_language'] as String?,
      voteCount: json['vote_count'] as int?,
      releaseDate: json['release_date'] as String?,
      voteAverage: (json['vote_average'] as num?)?.toDouble(),
      originalTitle: json['original_title'] as String?,
      backdropPath: json['backdrop_path'] as String?,
      adult: json['adult'] as bool? ?? false,
    );

Map<String, dynamic> _$$MovieContractImplToJson(_$MovieContractImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'popularity': instance.popularity,
      'overview': instance.overview,
      'title': instance.title,
      'name': instance.name,
      'first_air_date': instance.firstAirDate,
      'poster_path': instance.posterPath,
      'original_language': instance.originalLanguage,
      'vote_count': instance.voteCount,
      'release_date': instance.releaseDate,
      'vote_average': instance.voteAverage,
      'original_title': instance.originalTitle,
      'backdrop_path': instance.backdropPath,
      'adult': instance.adult,
    };
