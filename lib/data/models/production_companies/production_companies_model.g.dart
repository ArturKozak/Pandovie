// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'production_companies_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductionCompaniesModelImpl _$$ProductionCompaniesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductionCompaniesModelImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      logoPathRaw: json['logoPathRaw'] as String?,
      logoPath:
          const Uint8ListConverter().fromJson(json['logoPath'] as List<int>?),
      originCountry: json['originCountry'] as String?,
    );

Map<String, dynamic> _$$ProductionCompaniesModelImplToJson(
        _$ProductionCompaniesModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logoPathRaw': instance.logoPathRaw,
      'logoPath': const Uint8ListConverter().toJson(instance.logoPath),
      'originCountry': instance.originCountry,
    };
