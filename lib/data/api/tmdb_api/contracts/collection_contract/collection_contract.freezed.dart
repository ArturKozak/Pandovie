// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'collection_contract.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MoviesCollectionContract _$MoviesCollectionContractFromJson(
    Map<String, dynamic> json) {
  return _MoviesCollectionContract.fromJson(json);
}

/// @nodoc
mixin _$MoviesCollectionContract {
  List<MovieContract> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MoviesCollectionContractCopyWith<MoviesCollectionContract> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoviesCollectionContractCopyWith<$Res> {
  factory $MoviesCollectionContractCopyWith(MoviesCollectionContract value,
          $Res Function(MoviesCollectionContract) then) =
      _$MoviesCollectionContractCopyWithImpl<$Res, MoviesCollectionContract>;
  @useResult
  $Res call({List<MovieContract> results});
}

/// @nodoc
class _$MoviesCollectionContractCopyWithImpl<$Res,
        $Val extends MoviesCollectionContract>
    implements $MoviesCollectionContractCopyWith<$Res> {
  _$MoviesCollectionContractCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<MovieContract>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MoviesCollectionContractImplCopyWith<$Res>
    implements $MoviesCollectionContractCopyWith<$Res> {
  factory _$$MoviesCollectionContractImplCopyWith(
          _$MoviesCollectionContractImpl value,
          $Res Function(_$MoviesCollectionContractImpl) then) =
      __$$MoviesCollectionContractImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MovieContract> results});
}

/// @nodoc
class __$$MoviesCollectionContractImplCopyWithImpl<$Res>
    extends _$MoviesCollectionContractCopyWithImpl<$Res,
        _$MoviesCollectionContractImpl>
    implements _$$MoviesCollectionContractImplCopyWith<$Res> {
  __$$MoviesCollectionContractImplCopyWithImpl(
      _$MoviesCollectionContractImpl _value,
      $Res Function(_$MoviesCollectionContractImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_$MoviesCollectionContractImpl(
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<MovieContract>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MoviesCollectionContractImpl implements _MoviesCollectionContract {
  const _$MoviesCollectionContractImpl(
      {required final List<MovieContract> results})
      : _results = results;

  factory _$MoviesCollectionContractImpl.fromJson(Map<String, dynamic> json) =>
      _$$MoviesCollectionContractImplFromJson(json);

  final List<MovieContract> _results;
  @override
  List<MovieContract> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'MoviesCollectionContract(results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoviesCollectionContractImpl &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MoviesCollectionContractImplCopyWith<_$MoviesCollectionContractImpl>
      get copyWith => __$$MoviesCollectionContractImplCopyWithImpl<
          _$MoviesCollectionContractImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MoviesCollectionContractImplToJson(
      this,
    );
  }
}

abstract class _MoviesCollectionContract implements MoviesCollectionContract {
  const factory _MoviesCollectionContract(
          {required final List<MovieContract> results}) =
      _$MoviesCollectionContractImpl;

  factory _MoviesCollectionContract.fromJson(Map<String, dynamic> json) =
      _$MoviesCollectionContractImpl.fromJson;

  @override
  List<MovieContract> get results;
  @override
  @JsonKey(ignore: true)
  _$$MoviesCollectionContractImplCopyWith<_$MoviesCollectionContractImpl>
      get copyWith => throw _privateConstructorUsedError;
}
