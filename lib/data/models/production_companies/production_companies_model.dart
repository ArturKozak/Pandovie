// ignore_for_file: invalid_annotation_target

import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pandovie/data/api/tmdb_api/contracts/movie_details_contract/production_companies/production_companies_contract.dart';
import 'package:pandovie/utils/uint_converter.dart';

part 'production_companies_model.freezed.dart';
part 'production_companies_model.g.dart';

@freezed
class ProductionCompaniesModel with _$ProductionCompaniesModel {
  static const idKey = 'id';
  static const nameKey = 'name';
  static const logoPathRawKey = 'logoPathRaw';
  static const logoPathKey = 'logoPath';
  static const originCountryKey = 'logoPath';

  const factory ProductionCompaniesModel({
    required int id,
    required String name,
    String? logoPathRaw,
    @Uint8ListConverter() Uint8List? logoPath,
    String? originCountry,
  }) = _ProductionCompaniesModel;

  factory ProductionCompaniesModel.fromJson(Map<String, Object?> json) =>
      _$ProductionCompaniesModelFromJson(json);

  static ProductionCompaniesModel fromContract(
      ProductionCompaniesContract contract) {
    return ProductionCompaniesModel(
      id: contract.id,
      name: contract.name,
      logoPathRaw: contract.logoPath,
      originCountry: contract.originCountry,
    );
  }

  static ProductionCompaniesModel fromHive(Map<String, Object?> json) {
    return ProductionCompaniesModel(
      id: json[idKey] as int,
      name: json[nameKey] as String,
      logoPath: Uint8List.fromList(
        List.from(json[logoPathKey] as List<dynamic>),
      ),
      logoPathRaw: json[logoPathRawKey] as String?,
      originCountry: json[originCountryKey] as String?,
    );
  }
}
