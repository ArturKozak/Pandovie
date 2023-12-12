// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_details_contract.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieDetailsContract _$MovieDetailsContractFromJson(Map<String, dynamic> json) {
  return _MovieDetailsContract.fromJson(json);
}

/// @nodoc
mixin _$MovieDetailsContract {
  int get budget => throw _privateConstructorUsedError;
  List<GenresContract> get genres => throw _privateConstructorUsedError;
  double? get revenue => throw _privateConstructorUsedError;
  double? get runtime => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'production_companies')
  List<ProductionCompaniesContract>? get productionCompanies =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieDetailsContractCopyWith<MovieDetailsContract> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailsContractCopyWith<$Res> {
  factory $MovieDetailsContractCopyWith(MovieDetailsContract value,
          $Res Function(MovieDetailsContract) then) =
      _$MovieDetailsContractCopyWithImpl<$Res, MovieDetailsContract>;
  @useResult
  $Res call(
      {int budget,
      List<GenresContract> genres,
      double? revenue,
      double? runtime,
      String? status,
      @JsonKey(name: 'production_companies')
      List<ProductionCompaniesContract>? productionCompanies});
}

/// @nodoc
class _$MovieDetailsContractCopyWithImpl<$Res,
        $Val extends MovieDetailsContract>
    implements $MovieDetailsContractCopyWith<$Res> {
  _$MovieDetailsContractCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? budget = null,
    Object? genres = null,
    Object? revenue = freezed,
    Object? runtime = freezed,
    Object? status = freezed,
    Object? productionCompanies = freezed,
  }) {
    return _then(_value.copyWith(
      budget: null == budget
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as int,
      genres: null == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<GenresContract>,
      revenue: freezed == revenue
          ? _value.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as double?,
      runtime: freezed == runtime
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as double?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      productionCompanies: freezed == productionCompanies
          ? _value.productionCompanies
          : productionCompanies // ignore: cast_nullable_to_non_nullable
              as List<ProductionCompaniesContract>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieDetailsContractImplCopyWith<$Res>
    implements $MovieDetailsContractCopyWith<$Res> {
  factory _$$MovieDetailsContractImplCopyWith(_$MovieDetailsContractImpl value,
          $Res Function(_$MovieDetailsContractImpl) then) =
      __$$MovieDetailsContractImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int budget,
      List<GenresContract> genres,
      double? revenue,
      double? runtime,
      String? status,
      @JsonKey(name: 'production_companies')
      List<ProductionCompaniesContract>? productionCompanies});
}

/// @nodoc
class __$$MovieDetailsContractImplCopyWithImpl<$Res>
    extends _$MovieDetailsContractCopyWithImpl<$Res, _$MovieDetailsContractImpl>
    implements _$$MovieDetailsContractImplCopyWith<$Res> {
  __$$MovieDetailsContractImplCopyWithImpl(_$MovieDetailsContractImpl _value,
      $Res Function(_$MovieDetailsContractImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? budget = null,
    Object? genres = null,
    Object? revenue = freezed,
    Object? runtime = freezed,
    Object? status = freezed,
    Object? productionCompanies = freezed,
  }) {
    return _then(_$MovieDetailsContractImpl(
      budget: null == budget
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as int,
      genres: null == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<GenresContract>,
      revenue: freezed == revenue
          ? _value.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as double?,
      runtime: freezed == runtime
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as double?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      productionCompanies: freezed == productionCompanies
          ? _value._productionCompanies
          : productionCompanies // ignore: cast_nullable_to_non_nullable
              as List<ProductionCompaniesContract>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieDetailsContractImpl implements _MovieDetailsContract {
  const _$MovieDetailsContractImpl(
      {required this.budget,
      required final List<GenresContract> genres,
      this.revenue,
      this.runtime,
      this.status,
      @JsonKey(name: 'production_companies')
      final List<ProductionCompaniesContract>? productionCompanies})
      : _genres = genres,
        _productionCompanies = productionCompanies;

  factory _$MovieDetailsContractImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieDetailsContractImplFromJson(json);

  @override
  final int budget;
  final List<GenresContract> _genres;
  @override
  List<GenresContract> get genres {
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genres);
  }

  @override
  final double? revenue;
  @override
  final double? runtime;
  @override
  final String? status;
  final List<ProductionCompaniesContract>? _productionCompanies;
  @override
  @JsonKey(name: 'production_companies')
  List<ProductionCompaniesContract>? get productionCompanies {
    final value = _productionCompanies;
    if (value == null) return null;
    if (_productionCompanies is EqualUnmodifiableListView)
      return _productionCompanies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MovieDetailsContract(budget: $budget, genres: $genres, revenue: $revenue, runtime: $runtime, status: $status, productionCompanies: $productionCompanies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieDetailsContractImpl &&
            (identical(other.budget, budget) || other.budget == budget) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            (identical(other.revenue, revenue) || other.revenue == revenue) &&
            (identical(other.runtime, runtime) || other.runtime == runtime) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._productionCompanies, _productionCompanies));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      budget,
      const DeepCollectionEquality().hash(_genres),
      revenue,
      runtime,
      status,
      const DeepCollectionEquality().hash(_productionCompanies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieDetailsContractImplCopyWith<_$MovieDetailsContractImpl>
      get copyWith =>
          __$$MovieDetailsContractImplCopyWithImpl<_$MovieDetailsContractImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieDetailsContractImplToJson(
      this,
    );
  }
}

abstract class _MovieDetailsContract implements MovieDetailsContract {
  const factory _MovieDetailsContract(
          {required final int budget,
          required final List<GenresContract> genres,
          final double? revenue,
          final double? runtime,
          final String? status,
          @JsonKey(name: 'production_companies')
          final List<ProductionCompaniesContract>? productionCompanies}) =
      _$MovieDetailsContractImpl;

  factory _MovieDetailsContract.fromJson(Map<String, dynamic> json) =
      _$MovieDetailsContractImpl.fromJson;

  @override
  int get budget;
  @override
  List<GenresContract> get genres;
  @override
  double? get revenue;
  @override
  double? get runtime;
  @override
  String? get status;
  @override
  @JsonKey(name: 'production_companies')
  List<ProductionCompaniesContract>? get productionCompanies;
  @override
  @JsonKey(ignore: true)
  _$$MovieDetailsContractImplCopyWith<_$MovieDetailsContractImpl>
      get copyWith => throw _privateConstructorUsedError;
}
