// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_contract.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieContractImpl _$$MovieContractImplFromJson(Map<String, dynamic> json) =>
    _$MovieContractImpl(
      id: json['id'] as int,
      title: json['title'] as String,
      popularity: (json['popularity'] as num).toDouble(),
      overview: json['overview'] as String,
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
      'title': instance.title,
      'popularity': instance.popularity,
      'overview': instance.overview,
      'poster_path': instance.posterPath,
      'original_language': instance.originalLanguage,
      'vote_count': instance.voteCount,
      'release_date': instance.releaseDate,
      'vote_average': instance.voteAverage,
      'original_title': instance.originalTitle,
      'backdrop_path': instance.backdropPath,
      'adult': instance.adult,
    };
