// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'genres_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GenresModel _$GenresModelFromJson(Map<String, dynamic> json) {
  return _GenresModel.fromJson(json);
}

/// @nodoc
mixin _$GenresModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenresModelCopyWith<GenresModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenresModelCopyWith<$Res> {
  factory $GenresModelCopyWith(
          GenresModel value, $Res Function(GenresModel) then) =
      _$GenresModelCopyWithImpl<$Res, GenresModel>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$GenresModelCopyWithImpl<$Res, $Val extends GenresModel>
    implements $GenresModelCopyWith<$Res> {
  _$GenresModelCopyWithImpl(this._value, this._then);

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
abstract class _$$GenresModelImplCopyWith<$Res>
    implements $GenresModelCopyWith<$Res> {
  factory _$$GenresModelImplCopyWith(
          _$GenresModelImpl value, $Res Function(_$GenresModelImpl) then) =
      __$$GenresModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$GenresModelImplCopyWithImpl<$Res>
    extends _$GenresModelCopyWithImpl<$Res, _$GenresModelImpl>
    implements _$$GenresModelImplCopyWith<$Res> {
  __$$GenresModelImplCopyWithImpl(
      _$GenresModelImpl _value, $Res Function(_$GenresModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$GenresModelImpl(
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
class _$GenresModelImpl implements _GenresModel {
  const _$GenresModelImpl({required this.id, required this.name});

  factory _$GenresModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GenresModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'GenresModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenresModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GenresModelImplCopyWith<_$GenresModelImpl> get copyWith =>
      __$$GenresModelImplCopyWithImpl<_$GenresModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GenresModelImplToJson(
      this,
    );
  }
}

abstract class _GenresModel implements GenresModel {
  const factory _GenresModel(
      {required final int id, required final String name}) = _$GenresModelImpl;

  factory _GenresModel.fromJson(Map<String, dynamic> json) =
      _$GenresModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$GenresModelImplCopyWith<_$GenresModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
