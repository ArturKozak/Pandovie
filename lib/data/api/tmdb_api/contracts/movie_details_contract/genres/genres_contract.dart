// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'genres_contract.freezed.dart';
part 'genres_contract.g.dart';

@freezed
class GenresContract with _$GenresContract {
  const factory GenresContract({
    required int id,
    required String name,
  }) = _GenresContract;

  factory GenresContract.fromJson(Map<String, Object?> json) =>
      _$GenresContractFromJson(json);
}
