// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'production_companies_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductionCompaniesModel _$ProductionCompaniesModelFromJson(
    Map<String, dynamic> json) {
  return _ProductionCompaniesModel.fromJson(json);
}

/// @nodoc
mixin _$ProductionCompaniesModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get logoPathRaw => throw _privateConstructorUsedError;
  @Uint8ListConverter()
  Uint8List? get logoPath => throw _privateConstructorUsedError;
  String? get originCountry => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductionCompaniesModelCopyWith<ProductionCompaniesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductionCompaniesModelCopyWith<$Res> {
  factory $ProductionCompaniesModelCopyWith(ProductionCompaniesModel value,
          $Res Function(ProductionCompaniesModel) then) =
      _$ProductionCompaniesModelCopyWithImpl<$Res, ProductionCompaniesModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      String? logoPathRaw,
      @Uint8ListConverter() Uint8List? logoPath,
      String? originCountry});
}

/// @nodoc
class _$ProductionCompaniesModelCopyWithImpl<$Res,
        $Val extends ProductionCompaniesModel>
    implements $ProductionCompaniesModelCopyWith<$Res> {
  _$ProductionCompaniesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? logoPathRaw = freezed,
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
      logoPathRaw: freezed == logoPathRaw
          ? _value.logoPathRaw
          : logoPathRaw // ignore: cast_nullable_to_non_nullable
              as String?,
      logoPath: freezed == logoPath
          ? _value.logoPath
          : logoPath // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      originCountry: freezed == originCountry
          ? _value.originCountry
          : originCountry // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductionCompaniesModelImplCopyWith<$Res>
    implements $ProductionCompaniesModelCopyWith<$Res> {
  factory _$$ProductionCompaniesModelImplCopyWith(
          _$ProductionCompaniesModelImpl value,
          $Res Function(_$ProductionCompaniesModelImpl) then) =
      __$$ProductionCompaniesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String? logoPathRaw,
      @Uint8ListConverter() Uint8List? logoPath,
      String? originCountry});
}

/// @nodoc
class __$$ProductionCompaniesModelImplCopyWithImpl<$Res>
    extends _$ProductionCompaniesModelCopyWithImpl<$Res,
        _$ProductionCompaniesModelImpl>
    implements _$$ProductionCompaniesModelImplCopyWith<$Res> {
  __$$ProductionCompaniesModelImplCopyWithImpl(
      _$ProductionCompaniesModelImpl _value,
      $Res Function(_$ProductionCompaniesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? logoPathRaw = freezed,
    Object? logoPath = freezed,
    Object? originCountry = freezed,
  }) {
    return _then(_$ProductionCompaniesModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      logoPathRaw: freezed == logoPathRaw
          ? _value.logoPathRaw
          : logoPathRaw // ignore: cast_nullable_to_non_nullable
              as String?,
      logoPath: freezed == logoPath
          ? _value.logoPath
          : logoPath // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      originCountry: freezed == originCountry
          ? _value.originCountry
          : originCountry // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductionCompaniesModelImpl implements _ProductionCompaniesModel {
  const _$ProductionCompaniesModelImpl(
      {required this.id,
      required this.name,
      this.logoPathRaw,
      @Uint8ListConverter() this.logoPath,
      this.originCountry});

  factory _$ProductionCompaniesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductionCompaniesModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String? logoPathRaw;
  @override
  @Uint8ListConverter()
  final Uint8List? logoPath;
  @override
  final String? originCountry;

  @override
  String toString() {
    return 'ProductionCompaniesModel(id: $id, name: $name, logoPathRaw: $logoPathRaw, logoPath: $logoPath, originCountry: $originCountry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductionCompaniesModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.logoPathRaw, logoPathRaw) ||
                other.logoPathRaw == logoPathRaw) &&
            const DeepCollectionEquality().equals(other.logoPath, logoPath) &&
            (identical(other.originCountry, originCountry) ||
                other.originCountry == originCountry));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, logoPathRaw,
      const DeepCollectionEquality().hash(logoPath), originCountry);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductionCompaniesModelImplCopyWith<_$ProductionCompaniesModelImpl>
      get copyWith => __$$ProductionCompaniesModelImplCopyWithImpl<
          _$ProductionCompaniesModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductionCompaniesModelImplToJson(
      this,
    );
  }
}

abstract class _ProductionCompaniesModel implements ProductionCompaniesModel {
  const factory _ProductionCompaniesModel(
      {required final int id,
      required final String name,
      final String? logoPathRaw,
      @Uint8ListConverter() final Uint8List? logoPath,
      final String? originCountry}) = _$ProductionCompaniesModelImpl;

  factory _ProductionCompaniesModel.fromJson(Map<String, dynamic> json) =
      _$ProductionCompaniesModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String? get logoPathRaw;
  @override
  @Uint8ListConverter()
  Uint8List? get logoPath;
  @override
  String? get originCountry;
  @override
  @JsonKey(ignore: true)
  _$$ProductionCompaniesModelImplCopyWith<_$ProductionCompaniesModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
