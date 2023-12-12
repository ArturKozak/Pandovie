// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'production_companies_contract.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductionCompaniesContractImpl _$$ProductionCompaniesContractImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductionCompaniesContractImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      logoPath: json['logo_path'] as String?,
      originCountry: json['origin_country'] as String?,
    );

Map<String, dynamic> _$$ProductionCompaniesContractImplToJson(
        _$ProductionCompaniesContractImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logo_path': instance.logoPath,
      'origin_country': instance.originCountry,
    };
