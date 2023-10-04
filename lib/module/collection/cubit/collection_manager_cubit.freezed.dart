// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'collection_manager_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CollectionManagerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<MovieModel> movies) updatedMovieCollection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<MovieModel> movies)? updatedMovieCollection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<MovieModel> movies)? updatedMovieCollection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UpdatedMovieCollection value)
        updatedMovieCollection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_UpdatedMovieCollection value)? updatedMovieCollection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UpdatedMovieCollection value)? updatedMovieCollection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectionManagerStateCopyWith<$Res> {
  factory $CollectionManagerStateCopyWith(CollectionManagerState value,
          $Res Function(CollectionManagerState) then) =
      _$CollectionManagerStateCopyWithImpl<$Res, CollectionManagerState>;
}

/// @nodoc
class _$CollectionManagerStateCopyWithImpl<$Res,
        $Val extends CollectionManagerState>
    implements $CollectionManagerStateCopyWith<$Res> {
  _$CollectionManagerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$CollectionManagerStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'CollectionManagerState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<MovieModel> movies) updatedMovieCollection,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<MovieModel> movies)? updatedMovieCollection,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<MovieModel> movies)? updatedMovieCollection,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UpdatedMovieCollection value)
        updatedMovieCollection,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_UpdatedMovieCollection value)? updatedMovieCollection,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UpdatedMovieCollection value)? updatedMovieCollection,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CollectionManagerState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_UpdatedMovieCollectionCopyWith<$Res> {
  factory _$$_UpdatedMovieCollectionCopyWith(_$_UpdatedMovieCollection value,
          $Res Function(_$_UpdatedMovieCollection) then) =
      __$$_UpdatedMovieCollectionCopyWithImpl<$Res>;
  @useResult
  $Res call({List<MovieModel> movies});
}

/// @nodoc
class __$$_UpdatedMovieCollectionCopyWithImpl<$Res>
    extends _$CollectionManagerStateCopyWithImpl<$Res,
        _$_UpdatedMovieCollection>
    implements _$$_UpdatedMovieCollectionCopyWith<$Res> {
  __$$_UpdatedMovieCollectionCopyWithImpl(_$_UpdatedMovieCollection _value,
      $Res Function(_$_UpdatedMovieCollection) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movies = null,
  }) {
    return _then(_$_UpdatedMovieCollection(
      null == movies
          ? _value._movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<MovieModel>,
    ));
  }
}

/// @nodoc

class _$_UpdatedMovieCollection implements _UpdatedMovieCollection {
  const _$_UpdatedMovieCollection(final List<MovieModel> movies)
      : _movies = movies;

  final List<MovieModel> _movies;
  @override
  List<MovieModel> get movies {
    if (_movies is EqualUnmodifiableListView) return _movies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_movies);
  }

  @override
  String toString() {
    return 'CollectionManagerState.updatedMovieCollection(movies: $movies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdatedMovieCollection &&
            const DeepCollectionEquality().equals(other._movies, _movies));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_movies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdatedMovieCollectionCopyWith<_$_UpdatedMovieCollection> get copyWith =>
      __$$_UpdatedMovieCollectionCopyWithImpl<_$_UpdatedMovieCollection>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<MovieModel> movies) updatedMovieCollection,
  }) {
    return updatedMovieCollection(movies);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<MovieModel> movies)? updatedMovieCollection,
  }) {
    return updatedMovieCollection?.call(movies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<MovieModel> movies)? updatedMovieCollection,
    required TResult orElse(),
  }) {
    if (updatedMovieCollection != null) {
      return updatedMovieCollection(movies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UpdatedMovieCollection value)
        updatedMovieCollection,
  }) {
    return updatedMovieCollection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_UpdatedMovieCollection value)? updatedMovieCollection,
  }) {
    return updatedMovieCollection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UpdatedMovieCollection value)? updatedMovieCollection,
    required TResult orElse(),
  }) {
    if (updatedMovieCollection != null) {
      return updatedMovieCollection(this);
    }
    return orElse();
  }
}

abstract class _UpdatedMovieCollection implements CollectionManagerState {
  const factory _UpdatedMovieCollection(final List<MovieModel> movies) =
      _$_UpdatedMovieCollection;

  List<MovieModel> get movies;
  @JsonKey(ignore: true)
  _$$_UpdatedMovieCollectionCopyWith<_$_UpdatedMovieCollection> get copyWith =>
      throw _privateConstructorUsedError;
}