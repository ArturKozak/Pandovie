// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_details_contract.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieDetailsContract _$$_MovieDetailsContractFromJson(
        Map<String, dynamic> json) =>
    _$_MovieDetailsContract(
      budget: json['budget'] as int,
      genres: (json['genres'] as List<dynamic>)
          .map((e) => GenresContract.fromJson(e as Map<String, dynamic>))
          .toList(),
      revenue: (json['revenue'] as num?)?.toDouble(),
      runtime: (json['runtime'] as num?)?.toDouble(),
      status: json['status'] as String?,
      productionCompanies: (json['production_companies'] as List<dynamic>?)
          ?.map((e) =>
              ProductionCompaniesContract.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MovieDetailsContractToJson(
        _$_MovieDetailsContract instance) =>
    <String, dynamic>{
      'budget': instance.budget,
      'genres': instance.genres,
      'revenue': instance.revenue,
      'runtime': instance.runtime,
      'status': instance.status,
      'production_companies': instance.productionCompanies,
    };
