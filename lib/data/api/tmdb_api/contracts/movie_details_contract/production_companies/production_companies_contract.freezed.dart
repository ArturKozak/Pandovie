// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'production_companies_contract.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductionCompaniesContract _$ProductionCompaniesContractFromJson(
    Map<String, dynamic> json) {
  return _ProductionCompaniesContract.fromJson(json);
}

/// @nodoc
mixin _$ProductionCompaniesContract {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'logo_path')
  String? get logoPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'origin_country')
  String? get originCountry => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductionCompaniesContractCopyWith<ProductionCompaniesContract>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductionCompaniesContractCopyWith<$Res> {
  factory $ProductionCompaniesContractCopyWith(
          ProductionCompaniesContract value,
          $Res Function(ProductionCompaniesContract) then) =
      _$ProductionCompaniesContractCopyWithImpl<$Res,
          ProductionCompaniesContract>;
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'logo_path') String? logoPath,
      @JsonKey(name: 'origin_country') String? originCountry});
}

/// @nodoc
class _$ProductionCompaniesContractCopyWithImpl<$Res,
        $Val extends ProductionCompaniesContract>
    implements $ProductionCompaniesContractCopyWith<$Res> {
  _$ProductionCompaniesContractCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? logoPath = freezed,
    Object? originCountry = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      logoPath: freezed == logoPath
          ? _value.logoPath
          : logoPath // ignore: cast_nullable_to_non_nullable
              as String?,
      originCountry: freezed == originCountry
          ? _value.originCountry
          : originCountry // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductionCompaniesContractImplCopyWith<$Res>
    implements $ProductionCompaniesContractCopyWith<$Res> {
  factory _$$ProductionCompaniesContractImplCopyWith(
          _$ProductionCompaniesContractImpl value,
          $Res Function(_$ProductionCompaniesContractImpl) then) =
      __$$ProductionCompaniesContractImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'logo_path') String? logoPath,
      @JsonKey(name: 'origin_country') String? originCountry});
}

/// @nodoc
class __$$ProductionCompaniesContractImplCopyWithImpl<$Res>
    extends _$ProductionCompaniesContractCopyWithImpl<$Res,
        _$ProductionCompaniesContractImpl>
    implements _$$ProductionCompaniesContractImplCopyWith<$Res> {
  __$$ProductionCompaniesContractImplCopyWithImpl(
      _$ProductionCompaniesContractImpl _value,
      $Res Function(_$ProductionCompaniesContractImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? logoPath = freezed,
    Object? originCountry = freezed,
  }) {
    return _then(_$ProductionCompaniesContractImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      logoPath: freezed == logoPath
          ? _value.logoPath
          : logoPath // ignore: cast_nullable_to_non_nullable
              as String?,
      originCountry: freezed == originCountry
          ? _value.originCountry
          : originCountry // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductionCompaniesContractImpl
    implements _ProductionCompaniesContract {
  const _$ProductionCompaniesContractImpl(
      {required this.id,
      required this.name,
      @JsonKey(name: 'logo_path') this.logoPath,
      @JsonKey(name: 'origin_country') this.originCountry});

  factory _$ProductionCompaniesContractImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ProductionCompaniesContractImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: 'logo_path')
  final String? logoPath;
  @override
  @JsonKey(name: 'origin_country')
  final String? originCountry;

  @override
  String toString() {
    return 'ProductionCompaniesContract(id: $id, name: $name, logoPath: $logoPath, originCountry: $originCountry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductionCompaniesContractImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.logoPath, logoPath) ||
                other.logoPath == logoPath) &&
            (identical(other.originCountry, originCountry) ||
                other.originCountry == originCountry));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, logoPath, originCountry);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductionCompaniesContractImplCopyWith<_$ProductionCompaniesContractImpl>
      get copyWith => __$$ProductionCompaniesContractImplCopyWithImpl<
          _$ProductionCompaniesContractImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductionCompaniesContractImplToJson(
      this,
    );
  }
}

abstract class _ProductionCompaniesContract
    implements ProductionCompaniesContract {
  const factory _ProductionCompaniesContract(
          {required final int id,
          required final String name,
          @JsonKey(name: 'logo_path') final String? logoPath,
          @JsonKey(name: 'origin_country') final String? originCountry}) =
      _$ProductionCompaniesContractImpl;

  factory _ProductionCompaniesContract.fromJson(Map<String, dynamic> json) =
      _$ProductionCompaniesContractImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'logo_path')
  String? get logoPath;
  @override
  @JsonKey(name: 'origin_country')
  String? get originCountry;
  @override
  @JsonKey(ignore: true)
  _$$ProductionCompaniesContractImplCopyWith<_$ProductionCompaniesContractImpl>
      get copyWith => throw _privateConstructorUsedError;
}
