// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'production_companies_contract.freezed.dart';
part 'production_companies_contract.g.dart';

@freezed
class ProductionCompaniesContract with _$ProductionCompaniesContract {
  const factory ProductionCompaniesContract({
    required int id,
    required String name,
    @JsonKey(name: 'logo_path') String? logoPath,
    @JsonKey(name: 'origin_country') String? originCountry,
  }) = _ProductionCompaniesContract;

  factory ProductionCompaniesContract.fromJson(Map<String, Object?> json) =>
      _$ProductionCompaniesContractFromJson(json);
}
