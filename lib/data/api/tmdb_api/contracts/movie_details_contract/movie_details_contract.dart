// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pandovie/data/api/tmdb_api/contracts/movie_details_contract/genres/genres_contract.dart';
import 'package:pandovie/data/api/tmdb_api/contracts/movie_details_contract/production_companies/production_companies_contract.dart';

part 'movie_details_contract.freezed.dart';
part 'movie_details_contract.g.dart';

@freezed
class MovieDetailsContract with _$MovieDetailsContract {
  const factory MovieDetailsContract({
    required int budget,
    required List<GenresContract> genres,
    double? revenue,
    double? runtime,
    String? status,
    @JsonKey(name: 'production_companies')
    List<ProductionCompaniesContract>? productionCompanies,
  }) = _MovieDetailsContract;

  factory MovieDetailsContract.fromJson(Map<String, Object?> json) =>
      _$MovieDetailsContractFromJson(json);
}
