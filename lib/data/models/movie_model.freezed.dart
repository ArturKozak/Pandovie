// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieModel _$MovieModelFromJson(Map<String, dynamic> json) {
  return _MovieModel.fromJson(json);
}

/// @nodoc
mixin _$MovieModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  double get popularity => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;
  @Uint8ListConverter()
  Uint8List? get posterImage => throw _privateConstructorUsedError;
  String? get posterImageRaw => throw _privateConstructorUsedError;
  String? get originalLanguage => throw _privateConstructorUsedError;
  int? get voteCount => throw _privateConstructorUsedError;
  DateTime? get releaseDate => throw _privateConstructorUsedError;
  double? get voteAverage => throw _privateConstructorUsedError;
  String? get originalTitle => throw _privateConstructorUsedError;
  bool get adult => throw _privateConstructorUsedError;
  int? get budget => throw _privateConstructorUsedError;
  List<GenresModel>? get genres => throw _privateConstructorUsedError;
  double? get revenue => throw _privateConstructorUsedError;
  double? get runtime => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  List<ProductionCompaniesModel>? get productionCompanies =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieModelCopyWith<MovieModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieModelCopyWith<$Res> {
  factory $MovieModelCopyWith(
          MovieModel value, $Res Function(MovieModel) then) =
      _$MovieModelCopyWithImpl<$Res, MovieModel>;
  @useResult
  $Res call(
      {int id,
      String title,
      double popularity,
      String overview,
      @Uint8ListConverter() Uint8List? posterImage,
      String? posterImageRaw,
      String? originalLanguage,
      int? voteCount,
      DateTime? releaseDate,
      double? voteAverage,
      String? originalTitle,
      bool adult,
      int? budget,
      List<GenresModel>? genres,
      double? revenue,
      double? runtime,
      String? status,
      List<ProductionCompaniesModel>? productionCompanies});
}

/// @nodoc
class _$MovieModelCopyWithImpl<$Res, $Val extends MovieModel>
    implements $MovieModelCopyWith<$Res> {
  _$MovieModelCopyWithImpl(this._value, this._then);

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
    Object? posterImage = freezed,
    Object? posterImageRaw = freezed,
    Object? originalLanguage = freezed,
    Object? voteCount = freezed,
    Object? releaseDate = freezed,
    Object? voteAverage = freezed,
    Object? originalTitle = freezed,
    Object? adult = null,
    Object? budget = freezed,
    Object? genres = freezed,
    Object? revenue = freezed,
    Object? runtime = freezed,
    Object? status = freezed,
    Object? productionCompanies = freezed,
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
      posterImage: freezed == posterImage
          ? _value.posterImage
          : posterImage // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      posterImageRaw: freezed == posterImageRaw
          ? _value.posterImageRaw
          : posterImageRaw // ignore: cast_nullable_to_non_nullable
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
              as DateTime?,
      voteAverage: freezed == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      originalTitle: freezed == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      adult: null == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      budget: freezed == budget
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as int?,
      genres: freezed == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<GenresModel>?,
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
              as List<ProductionCompaniesModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MovieModelCopyWith<$Res>
    implements $MovieModelCopyWith<$Res> {
  factory _$$_MovieModelCopyWith(
          _$_MovieModel value, $Res Function(_$_MovieModel) then) =
      __$$_MovieModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      double popularity,
      String overview,
      @Uint8ListConverter() Uint8List? posterImage,
      String? posterImageRaw,
      String? originalLanguage,
      int? voteCount,
      DateTime? releaseDate,
      double? voteAverage,
      String? originalTitle,
      bool adult,
      int? budget,
      List<GenresModel>? genres,
      double? revenue,
      double? runtime,
      String? status,
      List<ProductionCompaniesModel>? productionCompanies});
}

/// @nodoc
class __$$_MovieModelCopyWithImpl<$Res>
    extends _$MovieModelCopyWithImpl<$Res, _$_MovieModel>
    implements _$$_MovieModelCopyWith<$Res> {
  __$$_MovieModelCopyWithImpl(
      _$_MovieModel _value, $Res Function(_$_MovieModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? popularity = null,
    Object? overview = null,
    Object? posterImage = freezed,
    Object? posterImageRaw = freezed,
    Object? originalLanguage = freezed,
    Object? voteCount = freezed,
    Object? releaseDate = freezed,
    Object? voteAverage = freezed,
    Object? originalTitle = freezed,
    Object? adult = null,
    Object? budget = freezed,
    Object? genres = freezed,
    Object? revenue = freezed,
    Object? runtime = freezed,
    Object? status = freezed,
    Object? productionCompanies = freezed,
  }) {
    return _then(_$_MovieModel(
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
      posterImage: freezed == posterImage
          ? _value.posterImage
          : posterImage // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      posterImageRaw: freezed == posterImageRaw
          ? _value.posterImageRaw
          : posterImageRaw // ignore: cast_nullable_to_non_nullable
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
              as DateTime?,
      voteAverage: freezed == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      originalTitle: freezed == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      adult: null == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      budget: freezed == budget
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as int?,
      genres: freezed == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<GenresModel>?,
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
              as List<ProductionCompaniesModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieModel implements _MovieModel {
  const _$_MovieModel(
      {required this.id,
      required this.title,
      required this.popularity,
      required this.overview,
      @Uint8ListConverter() this.posterImage,
      this.posterImageRaw,
      this.originalLanguage,
      this.voteCount,
      this.releaseDate,
      this.voteAverage,
      this.originalTitle,
      this.adult = false,
      this.budget,
      final List<GenresModel>? genres,
      this.revenue,
      this.runtime,
      this.status,
      final List<ProductionCompaniesModel>? productionCompanies})
      : _genres = genres,
        _productionCompanies = productionCompanies;

  factory _$_MovieModel.fromJson(Map<String, dynamic> json) =>
      _$$_MovieModelFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final double popularity;
  @override
  final String overview;
  @override
  @Uint8ListConverter()
  final Uint8List? posterImage;
  @override
  final String? posterImageRaw;
  @override
  final String? originalLanguage;
  @override
  final int? voteCount;
  @override
  final DateTime? releaseDate;
  @override
  final double? voteAverage;
  @override
  final String? originalTitle;
  @override
  @JsonKey()
  final bool adult;
  @override
  final int? budget;
  final List<GenresModel>? _genres;
  @override
  List<GenresModel>? get genres {
    final value = _genres;
    if (value == null) return null;
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final double? revenue;
  @override
  final double? runtime;
  @override
  final String? status;
  final List<ProductionCompaniesModel>? _productionCompanies;
  @override
  List<ProductionCompaniesModel>? get productionCompanies {
    final value = _productionCompanies;
    if (value == null) return null;
    if (_productionCompanies is EqualUnmodifiableListView)
      return _productionCompanies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MovieModel(id: $id, title: $title, popularity: $popularity, overview: $overview, posterImage: $posterImage, posterImageRaw: $posterImageRaw, originalLanguage: $originalLanguage, voteCount: $voteCount, releaseDate: $releaseDate, voteAverage: $voteAverage, originalTitle: $originalTitle, adult: $adult, budget: $budget, genres: $genres, revenue: $revenue, runtime: $runtime, status: $status, productionCompanies: $productionCompanies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            const DeepCollectionEquality()
                .equals(other.posterImage, posterImage) &&
            (identical(other.posterImageRaw, posterImageRaw) ||
                other.posterImageRaw == posterImageRaw) &&
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
            (identical(other.adult, adult) || other.adult == adult) &&
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
      id,
      title,
      popularity,
      overview,
      const DeepCollectionEquality().hash(posterImage),
      posterImageRaw,
      originalLanguage,
      voteCount,
      releaseDate,
      voteAverage,
      originalTitle,
      adult,
      budget,
      const DeepCollectionEquality().hash(_genres),
      revenue,
      runtime,
      status,
      const DeepCollectionEquality().hash(_productionCompanies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MovieModelCopyWith<_$_MovieModel> get copyWith =>
      __$$_MovieModelCopyWithImpl<_$_MovieModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieModelToJson(
      this,
    );
  }
}

abstract class _MovieModel implements MovieModel {
  const factory _MovieModel(
          {required final int id,
          required final String title,
          required final double popularity,
          required final String overview,
          @Uint8ListConverter() final Uint8List? posterImage,
          final String? posterImageRaw,
          final String? originalLanguage,
          final int? voteCount,
          final DateTime? releaseDate,
          final double? voteAverage,
          final String? originalTitle,
          final bool adult,
          final int? budget,
          final List<GenresModel>? genres,
          final double? revenue,
          final double? runtime,
          final String? status,
          final List<ProductionCompaniesModel>? productionCompanies}) =
      _$_MovieModel;

  factory _MovieModel.fromJson(Map<String, dynamic> json) =
      _$_MovieModel.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  double get popularity;
  @override
  String get overview;
  @override
  @Uint8ListConverter()
  Uint8List? get posterImage;
  @override
  String? get posterImageRaw;
  @override
  String? get originalLanguage;
  @override
  int? get voteCount;
  @override
  DateTime? get releaseDate;
  @override
  double? get voteAverage;
  @override
  String? get originalTitle;
  @override
  bool get adult;
  @override
  int? get budget;
  @override
  List<GenresModel>? get genres;
  @override
  double? get revenue;
  @override
  double? get runtime;
  @override
  String? get status;
  @override
  List<ProductionCompaniesModel>? get productionCompanies;
  @override
  @JsonKey(ignore: true)
  _$$_MovieModelCopyWith<_$_MovieModel> get copyWith =>
      throw _privateConstructorUsedError;
}
