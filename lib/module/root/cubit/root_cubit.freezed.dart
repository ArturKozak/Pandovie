// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'root_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RootState {
  DrawerMenuType get type => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DrawerMenuType type) updateMenuType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DrawerMenuType type)? updateMenuType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DrawerMenuType type)? updateMenuType,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateMenutype value) updateMenuType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateMenutype value)? updateMenuType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateMenutype value)? updateMenuType,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RootStateCopyWith<RootState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RootStateCopyWith<$Res> {
  factory $RootStateCopyWith(RootState value, $Res Function(RootState) then) =
      _$RootStateCopyWithImpl<$Res, RootState>;
  @useResult
  $Res call({DrawerMenuType type});
}

/// @nodoc
class _$RootStateCopyWithImpl<$Res, $Val extends RootState>
    implements $RootStateCopyWith<$Res> {
  _$RootStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as DrawerMenuType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateMenutypeImplCopyWith<$Res>
    implements $RootStateCopyWith<$Res> {
  factory _$$UpdateMenutypeImplCopyWith(_$UpdateMenutypeImpl value,
          $Res Function(_$UpdateMenutypeImpl) then) =
      __$$UpdateMenutypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DrawerMenuType type});
}

/// @nodoc
class __$$UpdateMenutypeImplCopyWithImpl<$Res>
    extends _$RootStateCopyWithImpl<$Res, _$UpdateMenutypeImpl>
    implements _$$UpdateMenutypeImplCopyWith<$Res> {
  __$$UpdateMenutypeImplCopyWithImpl(
      _$UpdateMenutypeImpl _value, $Res Function(_$UpdateMenutypeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$UpdateMenutypeImpl(
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as DrawerMenuType,
    ));
  }
}

/// @nodoc

class _$UpdateMenutypeImpl implements _UpdateMenutype {
  const _$UpdateMenutypeImpl(this.type);

  @override
  final DrawerMenuType type;

  @override
  String toString() {
    return 'RootState.updateMenuType(type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateMenutypeImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateMenutypeImplCopyWith<_$UpdateMenutypeImpl> get copyWith =>
      __$$UpdateMenutypeImplCopyWithImpl<_$UpdateMenutypeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DrawerMenuType type) updateMenuType,
  }) {
    return updateMenuType(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DrawerMenuType type)? updateMenuType,
  }) {
    return updateMenuType?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DrawerMenuType type)? updateMenuType,
    required TResult orElse(),
  }) {
    if (updateMenuType != null) {
      return updateMenuType(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateMenutype value) updateMenuType,
  }) {
    return updateMenuType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateMenutype value)? updateMenuType,
  }) {
    return updateMenuType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateMenutype value)? updateMenuType,
    required TResult orElse(),
  }) {
    if (updateMenuType != null) {
      return updateMenuType(this);
    }
    return orElse();
  }
}

abstract class _UpdateMenutype implements RootState {
  const factory _UpdateMenutype(final DrawerMenuType type) =
      _$UpdateMenutypeImpl;

  @override
  DrawerMenuType get type;
  @override
  @JsonKey(ignore: true)
  _$$UpdateMenutypeImplCopyWith<_$UpdateMenutypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
