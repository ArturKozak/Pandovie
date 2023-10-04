// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_contract.freezed.dart';
part 'movie_contract.g.dart';

@freezed
class MovieContract with _$MovieContract {
  const factory MovieContract({
    required int id,
    required String title,
    required double popularity,
    required String overview,
    @JsonKey(name: 'poster_path')  String? posterPath,
    @JsonKey(name: 'original_language')  String? originalLanguage,
    @JsonKey(name: 'vote_count')  int? voteCount,
    @JsonKey(name: 'release_date')  String? releaseDate,
    @JsonKey(name: 'vote_average')  double? voteAverage,
    @JsonKey(name: 'original_title') String? originalTitle,
    @JsonKey(name: 'backdrop_path')  String? backdropPath,
    @Default(false) bool adult,
  }) = _MovieContract;

  factory MovieContract.fromJson(Map<String, Object?> json) =>
      _$MovieContractFromJson(json);
}
