// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'genres_contract.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GenresContract _$GenresContractFromJson(Map<String, dynamic> json) {
  return _GenresContract.fromJson(json);
}

/// @nodoc
mixin _$GenresContract {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenresContractCopyWith<GenresContract> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenresContractCopyWith<$Res> {
  factory $GenresContractCopyWith(
          GenresContract value, $Res Function(GenresContract) then) =
      _$GenresContractCopyWithImpl<$Res, GenresContract>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$GenresContractCopyWithImpl<$Res, $Val extends GenresContract>
    implements $GenresContractCopyWith<$Res> {
  _$GenresContractCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GenresContractCopyWith<$Res>
    implements $GenresContractCopyWith<$Res> {
  factory _$$_GenresContractCopyWith(
          _$_GenresContract value, $Res Function(_$_GenresContract) then) =
      __$$_GenresContractCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$_GenresContractCopyWithImpl<$Res>
    extends _$GenresContractCopyWithImpl<$Res, _$_GenresContract>
    implements _$$_GenresContractCopyWith<$Res> {
  __$$_GenresContractCopyWithImpl(
      _$_GenresContract _value, $Res Function(_$_GenresContract) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$_GenresContract(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GenresContract implements _GenresContract {
  const _$_GenresContract({required this.id, required this.name});

  factory _$_GenresContract.fromJson(Map<String, dynamic> json) =>
      _$$_GenresContractFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'GenresContract(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GenresContract &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GenresContractCopyWith<_$_GenresContract> get copyWith =>
      __$$_GenresContractCopyWithImpl<_$_GenresContract>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GenresContractToJson(
      this,
    );
  }
}

abstract class _GenresContract implements GenresContract {
  const factory _GenresContract(
      {required final int id, required final String name}) = _$_GenresContract;

  factory _GenresContract.fromJson(Map<String, dynamic> json) =
      _$_GenresContract.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_GenresContractCopyWith<_$_GenresContract> get copyWith =>
      throw _privateConstructorUsedError;
}
