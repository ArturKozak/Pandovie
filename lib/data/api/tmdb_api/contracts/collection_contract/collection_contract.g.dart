// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection_contract.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MoviesCollectionContractImpl _$$MoviesCollectionContractImplFromJson(
        Map<String, dynamic> json) =>
    _$MoviesCollectionContractImpl(
      results: (json['results'] as List<dynamic>)
          .map((e) => MovieContract.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MoviesCollectionContractImplToJson(
        _$MoviesCollectionContractImpl instance) =>
    <String, dynamic>{
      'results': instance.results,
    };
