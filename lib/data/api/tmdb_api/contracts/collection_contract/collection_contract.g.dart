// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection_contract.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MoviesCollectionContract _$$_MoviesCollectionContractFromJson(
        Map<String, dynamic> json) =>
    _$_MoviesCollectionContract(
      results: (json['results'] as List<dynamic>)
          .map((e) => MovieContract.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MoviesCollectionContractToJson(
        _$_MoviesCollectionContract instance) =>
    <String, dynamic>{
      'results': instance.results,
    };
