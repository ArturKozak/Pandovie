// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'production_companies_contract.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductionCompaniesContract _$$_ProductionCompaniesContractFromJson(
        Map<String, dynamic> json) =>
    _$_ProductionCompaniesContract(
      id: json['id'] as int,
      name: json['name'] as String,
      logoPath: json['logo_path'] as String?,
      originCountry: json['origin_country'] as String?,
    );

Map<String, dynamic> _$$_ProductionCompaniesContractToJson(
        _$_ProductionCompaniesContract instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logo_path': instance.logoPath,
      'origin_country': instance.originCountry,
    };
