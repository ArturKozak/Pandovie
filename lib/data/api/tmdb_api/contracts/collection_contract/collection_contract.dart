// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pandovie/data/api/tmdb_api/contracts/movie_contract/movie_contract.dart';

part 'collection_contract.freezed.dart';
part 'collection_contract.g.dart';

@freezed
class MoviesCollectionContract with _$MoviesCollectionContract {
  const factory MoviesCollectionContract({
    required List<MovieContract> results,
  }) = _MoviesCollectionContract;

  factory MoviesCollectionContract.fromJson(Map<String, Object?> json) =>
      _$MoviesCollectionContractFromJson(json);
}
