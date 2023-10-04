// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_contract.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieContract _$MovieContractFromJson(Map<String, dynamic> json) {
  return _MovieContract.fromJson(json);
}

/// @nodoc
mixin _$MovieContract {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  double get popularity => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster_path')
  String? get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_language')
  String? get originalLanguage => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_count')
  int? get voteCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'release_date')
  String? get releaseDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_average')
  double? get voteAverage => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_title')
  String? get originalTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath => throw _privateConstructorUsedError;
  bool get adult => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieContractCopyWith<MovieContract> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieContractCopyWith<$Res> {
  factory $MovieContractCopyWith(
          MovieContract value, $Res Function(MovieContract) then) =
      _$MovieContractCopyWithImpl<$Res, MovieContract>;
  @useResult
  $Res call(
      {int id,
      String title,
      double popularity,
      String overview,
      @JsonKey(name: 'poster_path') String? posterPath,
      @JsonKey(name: 'original_language') String? originalLanguage,
      @JsonKey(name: 'vote_count') int? voteCount,
      @JsonKey(name: 'release_date') String? releaseDate,
      @JsonKey(name: 'vote_average') double? voteAverage,
      @JsonKey(name: 'original_title') String? originalTitle,
      @JsonKey(name: 'backdrop_path') String? backdropPath,
      bool adult});
}

/// @nodoc
class _$MovieContractCopyWithImpl<$Res, $Val extends MovieContract>
    implements $MovieContractCopyWith<$Res> {
  _$MovieContractCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? popularity = null,
    Object? overview = null,
    Object? posterPath = freezed,
    Object? originalLanguage = freezed,
    Object? voteCount = freezed,
    Object? releaseDate = freezed,
    Object? voteAverage = freezed,
    Object? originalTitle = freezed,
    Object? backdropPath = freezed,
    Object? adult = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      originalLanguage: freezed == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      voteCount: freezed == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      voteAverage: freezed == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      originalTitle: freezed == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      adult: null == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MovieContractCopyWith<$Res>
    implements $MovieContractCopyWith<$Res> {
  factory _$$_MovieContractCopyWith(
          _$_MovieContract value, $Res Function(_$_MovieContract) then) =
      __$$_MovieContractCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      double popularity,
      String overview,
      @JsonKey(name: 'poster_path') String? posterPath,
      @JsonKey(name: 'original_language') String? originalLanguage,
      @JsonKey(name: 'vote_count') int? voteCount,
      @JsonKey(name: 'release_date') String? releaseDate,
      @JsonKey(name: 'vote_average') double? voteAverage,
      @JsonKey(name: 'original_title') String? originalTitle,
      @JsonKey(name: 'backdrop_path') String? backdropPath,
      bool adult});
}

/// @nodoc
class __$$_MovieContractCopyWithImpl<$Res>
    extends _$MovieContractCopyWithImpl<$Res, _$_MovieContract>
    implements _$$_MovieContractCopyWith<$Res> {
  __$$_MovieContractCopyWithImpl(
      _$_MovieContract _value, $Res Function(_$_MovieContract) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? popularity = null,
    Object? overview = null,
    Object? posterPath = freezed,
    Object? originalLanguage = freezed,
    Object? voteCount = freezed,
    Object? releaseDate = freezed,
    Object? voteAverage = freezed,
    Object? originalTitle = freezed,
    Object? backdropPath = freezed,
    Object? adult = null,
  }) {
    return _then(_$_MovieContract(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      originalLanguage: freezed == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      voteCount: freezed == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      voteAverage: freezed == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      originalTitle: freezed == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      adult: null == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieContract implements _MovieContract {
  const _$_MovieContract(
      {required this.id,
      required this.title,
      required this.popularity,
      required this.overview,
      @JsonKey(name: 'poster_path') this.posterPath,
      @JsonKey(name: 'original_language') this.originalLanguage,
      @JsonKey(name: 'vote_count') this.voteCount,
      @JsonKey(name: 'release_date') this.releaseDate,
      @JsonKey(name: 'vote_average') this.voteAverage,
      @JsonKey(name: 'original_title') this.originalTitle,
      @JsonKey(name: 'backdrop_path') this.backdropPath,
      this.adult = false});

  factory _$_MovieContract.fromJson(Map<String, dynamic> json) =>
      _$$_MovieContractFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final double popularity;
  @override
  final String overview;
  @override
  @JsonKey(name: 'poster_path')
  final String? posterPath;
  @override
  @JsonKey(name: 'original_language')
  final String? originalLanguage;
  @override
  @JsonKey(name: 'vote_count')
  final int? voteCount;
  @override
  @JsonKey(name: 'release_date')
  final String? releaseDate;
  @override
  @JsonKey(name: 'vote_average')
  final double? voteAverage;
  @override
  @JsonKey(name: 'original_title')
  final String? originalTitle;
  @override
  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;
  @override
  @JsonKey()
  final bool adult;

  @override
  String toString() {
    return 'MovieContract(id: $id, title: $title, popularity: $popularity, overview: $overview, posterPath: $posterPath, originalLanguage: $originalLanguage, voteCount: $voteCount, releaseDate: $releaseDate, voteAverage: $voteAverage, originalTitle: $originalTitle, backdropPath: $backdropPath, adult: $adult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieContract &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.originalLanguage, originalLanguage) ||
                other.originalLanguage == originalLanguage) &&
            (identical(other.voteCount, voteCount) ||
                other.voteCount == voteCount) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage) &&
            (identical(other.originalTitle, originalTitle) ||
                other.originalTitle == originalTitle) &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath) &&
            (identical(other.adult, adult) || other.adult == adult));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      popularity,
      overview,
      posterPath,
      originalLanguage,
      voteCount,
      releaseDate,
      voteAverage,
      originalTitle,
      backdropPath,
      adult);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MovieContractCopyWith<_$_MovieContract> get copyWith =>
      __$$_MovieContractCopyWithImpl<_$_MovieContract>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieContractToJson(
      this,
    );
  }
}

abstract class _MovieContract implements MovieContract {
  const factory _MovieContract(
      {required final int id,
      required final String title,
      required final double popularity,
      required final String overview,
      @JsonKey(name: 'poster_path') final String? posterPath,
      @JsonKey(name: 'original_language') final String? originalLanguage,
      @JsonKey(name: 'vote_count') final int? voteCount,
      @JsonKey(name: 'release_date') final String? releaseDate,
      @JsonKey(name: 'vote_average') final double? voteAverage,
      @JsonKey(name: 'original_title') final String? originalTitle,
      @JsonKey(name: 'backdrop_path') final String? backdropPath,
      final bool adult}) = _$_MovieContract;

  factory _MovieContract.fromJson(Map<String, dynamic> json) =
      _$_MovieContract.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  double get popularity;
  @override
  String get overview;
  @override
  @JsonKey(name: 'poster_path')
  String? get posterPath;
  @override
  @JsonKey(name: 'original_language')
  String? get originalLanguage;
  @override
  @JsonKey(name: 'vote_count')
  int? get voteCount;
  @override
  @JsonKey(name: 'release_date')
  String? get releaseDate;
  @override
  @JsonKey(name: 'vote_average')
  double? get voteAverage;
  @override
  @JsonKey(name: 'original_title')
  String? get originalTitle;
  @override
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath;
  @override
  bool get adult;
  @override
  @JsonKey(ignore: true)
  _$$_MovieContractCopyWith<_$_MovieContract> get copyWith =>
      throw _privateConstructorUsedError;
}
