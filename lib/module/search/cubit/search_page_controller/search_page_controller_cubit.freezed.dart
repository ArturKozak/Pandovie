// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, non_nullable_equals_parameter
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_page_controller_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchPageControllerState {
  int get index => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) switcher,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? switcher,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? switcher,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Switcher value) switcher,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Switcher value)? switcher,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Switcher value)? switcher,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchPageControllerStateCopyWith<SearchPageControllerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchPageControllerStateCopyWith<$Res> {
  factory $SearchPageControllerStateCopyWith(SearchPageControllerState value,
          $Res Function(SearchPageControllerState) then) =
      _$SearchPageControllerStateCopyWithImpl<$Res, SearchPageControllerState>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class _$SearchPageControllerStateCopyWithImpl<$Res,
        $Val extends SearchPageControllerState>
    implements $SearchPageControllerStateCopyWith<$Res> {
  _$SearchPageControllerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SwitcherImplCopyWith<$Res>
    implements $SearchPageControllerStateCopyWith<$Res> {
  factory _$$SwitcherImplCopyWith(
          _$SwitcherImpl value, $Res Function(_$SwitcherImpl) then) =
      __$$SwitcherImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$SwitcherImplCopyWithImpl<$Res>
    extends _$SearchPageControllerStateCopyWithImpl<$Res, _$SwitcherImpl>
    implements _$$SwitcherImplCopyWith<$Res> {
  __$$SwitcherImplCopyWithImpl(
      _$SwitcherImpl _value, $Res Function(_$SwitcherImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$SwitcherImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SwitcherImpl implements _Switcher {
  const _$SwitcherImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'SearchPageControllerState.switcher(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SwitcherImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SwitcherImplCopyWith<_$SwitcherImpl> get copyWith =>
      __$$SwitcherImplCopyWithImpl<_$SwitcherImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) switcher,
  }) {
    return switcher(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? switcher,
  }) {
    return switcher?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? switcher,
    required TResult orElse(),
  }) {
    if (switcher != null) {
      return switcher(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Switcher value) switcher,
  }) {
    return switcher(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Switcher value)? switcher,
  }) {
    return switcher?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Switcher value)? switcher,
    required TResult orElse(),
  }) {
    if (switcher != null) {
      return switcher(this);
    }
    return orElse();
  }
}

abstract class _Switcher implements SearchPageControllerState {
  const factory _Switcher(final int index) = _$SwitcherImpl;

  @override
  int get index;
  @override
  @JsonKey(ignore: true)
  _$$SwitcherImplCopyWith<_$SwitcherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
