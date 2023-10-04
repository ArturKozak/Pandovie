// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pandovie/data/api/tmdb_api/contracts/movie_details_contract/genres/genres_contract.dart';

part 'genres_model.freezed.dart';
part 'genres_model.g.dart';

@freezed
class GenresModel with _$GenresModel {
  static const idKey = 'id';
  static const nameKey = 'name';

  const factory GenresModel({
    required int id,
    required String name,
  }) = _GenresModel;

  factory GenresModel.fromJson(Map<String, Object?> json) =>
      _$GenresModelFromJson(json);

  static GenresModel fromContract(GenresContract contract) {
    return GenresModel(
      id: contract.id,
      name: contract.name,
    );
  }

  static GenresModel fromHive(Map<String, Object?> json) {
    return GenresModel(
      id: json[idKey] as int,
      name: json[nameKey] as String,
    );
  }
}
