// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, non_nullable_equals_parameter
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
  double get popularity => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @Uint8ListConverter()
  Uint8List? get posterImage => throw _privateConstructorUsedError;
  String? get posterImageRaw => throw _privateConstructorUsedError;
  String? get originalLanguage => throw _privateConstructorUsedError;
  int? get voteCount => throw _privateConstructorUsedError;
  DateTime? get releaseDate => throw _privateConstructorUsedError;
  DateTime? get firstAirDate => throw _privateConstructorUsedError;
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
  bool get isTV => throw _privateConstructorUsedError;
  List<int>? get episodeRunTime => throw _privateConstructorUsedError;
  bool? get inProduction => throw _privateConstructorUsedError;
  DateTime? get lastAirDate => throw _privateConstructorUsedError;
  TVEpisodeModel? get nextEpisode => throw _privateConstructorUsedError;
  int? get numberOfEpisodes => throw _privateConstructorUsedError;
  int? get numberOfSeasons => throw _privateConstructorUsedError;
  List<SeasonModel?>? get seasons => throw _privateConstructorUsedError;

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
      double popularity,
      String overview,
      String? title,
      String? name,
      @Uint8ListConverter() Uint8List? posterImage,
      String? posterImageRaw,
      String? originalLanguage,
      int? voteCount,
      DateTime? releaseDate,
      DateTime? firstAirDate,
      double? voteAverage,
      String? originalTitle,
      bool adult,
      int? budget,
      List<GenresModel>? genres,
      double? revenue,
      double? runtime,
      String? status,
      List<ProductionCompaniesModel>? productionCompanies,
      bool isTV,
      List<int>? episodeRunTime,
      bool? inProduction,
      DateTime? lastAirDate,
      TVEpisodeModel? nextEpisode,
      int? numberOfEpisodes,
      int? numberOfSeasons,
      List<SeasonModel?>? seasons});

  $TVEpisodeModelCopyWith<$Res>? get nextEpisode;
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
    Object? popularity = null,
    Object? overview = null,
    Object? title = freezed,
    Object? name = freezed,
    Object? posterImage = freezed,
    Object? posterImageRaw = freezed,
    Object? originalLanguage = freezed,
    Object? voteCount = freezed,
    Object? releaseDate = freezed,
    Object? firstAirDate = freezed,
    Object? voteAverage = freezed,
    Object? originalTitle = freezed,
    Object? adult = null,
    Object? budget = freezed,
    Object? genres = freezed,
    Object? revenue = freezed,
    Object? runtime = freezed,
    Object? status = freezed,
    Object? productionCompanies = freezed,
    Object? isTV = null,
    Object? episodeRunTime = freezed,
    Object? inProduction = freezed,
    Object? lastAirDate = freezed,
    Object? nextEpisode = freezed,
    Object? numberOfEpisodes = freezed,
    Object? numberOfSeasons = freezed,
    Object? seasons = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
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
      firstAirDate: freezed == firstAirDate
          ? _value.firstAirDate
          : firstAirDate // ignore: cast_nullable_to_non_nullable
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
      isTV: null == isTV
          ? _value.isTV
          : isTV // ignore: cast_nullable_to_non_nullable
              as bool,
      episodeRunTime: freezed == episodeRunTime
          ? _value.episodeRunTime
          : episodeRunTime // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      inProduction: freezed == inProduction
          ? _value.inProduction
          : inProduction // ignore: cast_nullable_to_non_nullable
              as bool?,
      lastAirDate: freezed == lastAirDate
          ? _value.lastAirDate
          : lastAirDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      nextEpisode: freezed == nextEpisode
          ? _value.nextEpisode
          : nextEpisode // ignore: cast_nullable_to_non_nullable
              as TVEpisodeModel?,
      numberOfEpisodes: freezed == numberOfEpisodes
          ? _value.numberOfEpisodes
          : numberOfEpisodes // ignore: cast_nullable_to_non_nullable
              as int?,
      numberOfSeasons: freezed == numberOfSeasons
          ? _value.numberOfSeasons
          : numberOfSeasons // ignore: cast_nullable_to_non_nullable
              as int?,
      seasons: freezed == seasons
          ? _value.seasons
          : seasons // ignore: cast_nullable_to_non_nullable
              as List<SeasonModel?>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TVEpisodeModelCopyWith<$Res>? get nextEpisode {
    if (_value.nextEpisode == null) {
      return null;
    }

    return $TVEpisodeModelCopyWith<$Res>(_value.nextEpisode!, (value) {
      return _then(_value.copyWith(nextEpisode: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MovieModelImplCopyWith<$Res>
    implements $MovieModelCopyWith<$Res> {
  factory _$$MovieModelImplCopyWith(
          _$MovieModelImpl value, $Res Function(_$MovieModelImpl) then) =
      __$$MovieModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      double popularity,
      String overview,
      String? title,
      String? name,
      @Uint8ListConverter() Uint8List? posterImage,
      String? posterImageRaw,
      String? originalLanguage,
      int? voteCount,
      DateTime? releaseDate,
      DateTime? firstAirDate,
      double? voteAverage,
      String? originalTitle,
      bool adult,
      int? budget,
      List<GenresModel>? genres,
      double? revenue,
      double? runtime,
      String? status,
      List<ProductionCompaniesModel>? productionCompanies,
      bool isTV,
      List<int>? episodeRunTime,
      bool? inProduction,
      DateTime? lastAirDate,
      TVEpisodeModel? nextEpisode,
      int? numberOfEpisodes,
      int? numberOfSeasons,
      List<SeasonModel?>? seasons});

  @override
  $TVEpisodeModelCopyWith<$Res>? get nextEpisode;
}

/// @nodoc
class __$$MovieModelImplCopyWithImpl<$Res>
    extends _$MovieModelCopyWithImpl<$Res, _$MovieModelImpl>
    implements _$$MovieModelImplCopyWith<$Res> {
  __$$MovieModelImplCopyWithImpl(
      _$MovieModelImpl _value, $Res Function(_$MovieModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? popularity = null,
    Object? overview = null,
    Object? title = freezed,
    Object? name = freezed,
    Object? posterImage = freezed,
    Object? posterImageRaw = freezed,
    Object? originalLanguage = freezed,
    Object? voteCount = freezed,
    Object? releaseDate = freezed,
    Object? firstAirDate = freezed,
    Object? voteAverage = freezed,
    Object? originalTitle = freezed,
    Object? adult = null,
    Object? budget = freezed,
    Object? genres = freezed,
    Object? revenue = freezed,
    Object? runtime = freezed,
    Object? status = freezed,
    Object? productionCompanies = freezed,
    Object? isTV = null,
    Object? episodeRunTime = freezed,
    Object? inProduction = freezed,
    Object? lastAirDate = freezed,
    Object? nextEpisode = freezed,
    Object? numberOfEpisodes = freezed,
    Object? numberOfSeasons = freezed,
    Object? seasons = freezed,
  }) {
    return _then(_$MovieModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
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
      firstAirDate: freezed == firstAirDate
          ? _value.firstAirDate
          : firstAirDate // ignore: cast_nullable_to_non_nullable
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
      isTV: null == isTV
          ? _value.isTV
          : isTV // ignore: cast_nullable_to_non_nullable
              as bool,
      episodeRunTime: freezed == episodeRunTime
          ? _value._episodeRunTime
          : episodeRunTime // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      inProduction: freezed == inProduction
          ? _value.inProduction
          : inProduction // ignore: cast_nullable_to_non_nullable
              as bool?,
      lastAirDate: freezed == lastAirDate
          ? _value.lastAirDate
          : lastAirDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      nextEpisode: freezed == nextEpisode
          ? _value.nextEpisode
          : nextEpisode // ignore: cast_nullable_to_non_nullable
              as TVEpisodeModel?,
      numberOfEpisodes: freezed == numberOfEpisodes
          ? _value.numberOfEpisodes
          : numberOfEpisodes // ignore: cast_nullable_to_non_nullable
              as int?,
      numberOfSeasons: freezed == numberOfSeasons
          ? _value.numberOfSeasons
          : numberOfSeasons // ignore: cast_nullable_to_non_nullable
              as int?,
      seasons: freezed == seasons
          ? _value._seasons
          : seasons // ignore: cast_nullable_to_non_nullable
              as List<SeasonModel?>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieModelImpl implements _MovieModel {
  const _$MovieModelImpl(
      {required this.id,
      required this.popularity,
      required this.overview,
      this.title,
      this.name,
      @Uint8ListConverter() this.posterImage,
      this.posterImageRaw,
      this.originalLanguage,
      this.voteCount,
      this.releaseDate,
      this.firstAirDate,
      this.voteAverage,
      this.originalTitle,
      this.adult = false,
      this.budget,
      final List<GenresModel>? genres,
      this.revenue,
      this.runtime,
      this.status,
      final List<ProductionCompaniesModel>? productionCompanies,
      this.isTV = false,
      final List<int>? episodeRunTime,
      this.inProduction,
      this.lastAirDate,
      this.nextEpisode,
      this.numberOfEpisodes,
      this.numberOfSeasons,
      final List<SeasonModel?>? seasons})
      : _genres = genres,
        _productionCompanies = productionCompanies,
        _episodeRunTime = episodeRunTime,
        _seasons = seasons;

  factory _$MovieModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieModelImplFromJson(json);

  @override
  final int id;
  @override
  final double popularity;
  @override
  final String overview;
  @override
  final String? title;
  @override
  final String? name;
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
  final DateTime? firstAirDate;
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
  @JsonKey()
  final bool isTV;
  final List<int>? _episodeRunTime;
  @override
  List<int>? get episodeRunTime {
    final value = _episodeRunTime;
    if (value == null) return null;
    if (_episodeRunTime is EqualUnmodifiableListView) return _episodeRunTime;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? inProduction;
  @override
  final DateTime? lastAirDate;
  @override
  final TVEpisodeModel? nextEpisode;
  @override
  final int? numberOfEpisodes;
  @override
  final int? numberOfSeasons;
  final List<SeasonModel?>? _seasons;
  @override
  List<SeasonModel?>? get seasons {
    final value = _seasons;
    if (value == null) return null;
    if (_seasons is EqualUnmodifiableListView) return _seasons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MovieModel(id: $id, popularity: $popularity, overview: $overview, title: $title, name: $name, posterImage: $posterImage, posterImageRaw: $posterImageRaw, originalLanguage: $originalLanguage, voteCount: $voteCount, releaseDate: $releaseDate, firstAirDate: $firstAirDate, voteAverage: $voteAverage, originalTitle: $originalTitle, adult: $adult, budget: $budget, genres: $genres, revenue: $revenue, runtime: $runtime, status: $status, productionCompanies: $productionCompanies, isTV: $isTV, episodeRunTime: $episodeRunTime, inProduction: $inProduction, lastAirDate: $lastAirDate, nextEpisode: $nextEpisode, numberOfEpisodes: $numberOfEpisodes, numberOfSeasons: $numberOfSeasons, seasons: $seasons)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.name, name) || other.name == name) &&
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
            (identical(other.firstAirDate, firstAirDate) ||
                other.firstAirDate == firstAirDate) &&
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
                .equals(other._productionCompanies, _productionCompanies) &&
            (identical(other.isTV, isTV) || other.isTV == isTV) &&
            const DeepCollectionEquality()
                .equals(other._episodeRunTime, _episodeRunTime) &&
            (identical(other.inProduction, inProduction) ||
                other.inProduction == inProduction) &&
            (identical(other.lastAirDate, lastAirDate) ||
                other.lastAirDate == lastAirDate) &&
            (identical(other.nextEpisode, nextEpisode) ||
                other.nextEpisode == nextEpisode) &&
            (identical(other.numberOfEpisodes, numberOfEpisodes) ||
                other.numberOfEpisodes == numberOfEpisodes) &&
            (identical(other.numberOfSeasons, numberOfSeasons) ||
                other.numberOfSeasons == numberOfSeasons) &&
            const DeepCollectionEquality().equals(other._seasons, _seasons));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        popularity,
        overview,
        title,
        name,
        const DeepCollectionEquality().hash(posterImage),
        posterImageRaw,
        originalLanguage,
        voteCount,
        releaseDate,
        firstAirDate,
        voteAverage,
        originalTitle,
        adult,
        budget,
        const DeepCollectionEquality().hash(_genres),
        revenue,
        runtime,
        status,
        const DeepCollectionEquality().hash(_productionCompanies),
        isTV,
        const DeepCollectionEquality().hash(_episodeRunTime),
        inProduction,
        lastAirDate,
        nextEpisode,
        numberOfEpisodes,
        numberOfSeasons,
        const DeepCollectionEquality().hash(_seasons)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieModelImplCopyWith<_$MovieModelImpl> get copyWith =>
      __$$MovieModelImplCopyWithImpl<_$MovieModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieModelImplToJson(
      this,
    );
  }
}

abstract class _MovieModel implements MovieModel {
  const factory _MovieModel(
      {required final int id,
      required final double popularity,
      required final String overview,
      final String? title,
      final String? name,
      @Uint8ListConverter() final Uint8List? posterImage,
      final String? posterImageRaw,
      final String? originalLanguage,
      final int? voteCount,
      final DateTime? releaseDate,
      final DateTime? firstAirDate,
      final double? voteAverage,
      final String? originalTitle,
      final bool adult,
      final int? budget,
      final List<GenresModel>? genres,
      final double? revenue,
      final double? runtime,
      final String? status,
      final List<ProductionCompaniesModel>? productionCompanies,
      final bool isTV,
      final List<int>? episodeRunTime,
      final bool? inProduction,
      final DateTime? lastAirDate,
      final TVEpisodeModel? nextEpisode,
      final int? numberOfEpisodes,
      final int? numberOfSeasons,
      final List<SeasonModel?>? seasons}) = _$MovieModelImpl;

  factory _MovieModel.fromJson(Map<String, dynamic> json) =
      _$MovieModelImpl.fromJson;

  @override
  int get id;
  @override
  double get popularity;
  @override
  String get overview;
  @override
  String? get title;
  @override
  String? get name;
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
  DateTime? get firstAirDate;
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
  bool get isTV;
  @override
  List<int>? get episodeRunTime;
  @override
  bool? get inProduction;
  @override
  DateTime? get lastAirDate;
  @override
  TVEpisodeModel? get nextEpisode;
  @override
  int? get numberOfEpisodes;
  @override
  int? get numberOfSeasons;
  @override
  List<SeasonModel?>? get seasons;
  @override
  @JsonKey(ignore: true)
  _$$MovieModelImplCopyWith<_$MovieModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
