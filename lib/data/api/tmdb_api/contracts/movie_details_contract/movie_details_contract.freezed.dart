// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, non_nullable_equals_parameter
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
  int? get budget => throw _privateConstructorUsedError;
  List<GenresContract>? get genres => throw _privateConstructorUsedError;
  double? get revenue => throw _privateConstructorUsedError;
  double? get runtime => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'episode_run_time')
  List<int>? get episodeRunTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'in_production')
  bool? get inProduction => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_air_date')
  DateTime? get lastAirDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'next_episode_to_air')
  TVEpisodeContract? get nextEpisode => throw _privateConstructorUsedError;
  @JsonKey(name: 'number_of_episodes')
  int? get numberOfEpisodes => throw _privateConstructorUsedError;
  @JsonKey(name: 'number_of_seasons')
  int? get numberOfSeasons => throw _privateConstructorUsedError;
  @JsonKey(name: 'seasons')
  List<SeasonContract?>? get seasons => throw _privateConstructorUsedError;
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
      {int? budget,
      List<GenresContract>? genres,
      double? revenue,
      double? runtime,
      String? status,
      @JsonKey(name: 'episode_run_time') List<int>? episodeRunTime,
      @JsonKey(name: 'in_production') bool? inProduction,
      @JsonKey(name: 'last_air_date') DateTime? lastAirDate,
      @JsonKey(name: 'next_episode_to_air') TVEpisodeContract? nextEpisode,
      @JsonKey(name: 'number_of_episodes') int? numberOfEpisodes,
      @JsonKey(name: 'number_of_seasons') int? numberOfSeasons,
      @JsonKey(name: 'seasons') List<SeasonContract?>? seasons,
      @JsonKey(name: 'production_companies')
      List<ProductionCompaniesContract>? productionCompanies});

  $TVEpisodeContractCopyWith<$Res>? get nextEpisode;
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
    Object? budget = freezed,
    Object? genres = freezed,
    Object? revenue = freezed,
    Object? runtime = freezed,
    Object? status = freezed,
    Object? episodeRunTime = freezed,
    Object? inProduction = freezed,
    Object? lastAirDate = freezed,
    Object? nextEpisode = freezed,
    Object? numberOfEpisodes = freezed,
    Object? numberOfSeasons = freezed,
    Object? seasons = freezed,
    Object? productionCompanies = freezed,
  }) {
    return _then(_value.copyWith(
      budget: freezed == budget
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as int?,
      genres: freezed == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<GenresContract>?,
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
              as TVEpisodeContract?,
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
              as List<SeasonContract?>?,
      productionCompanies: freezed == productionCompanies
          ? _value.productionCompanies
          : productionCompanies // ignore: cast_nullable_to_non_nullable
              as List<ProductionCompaniesContract>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TVEpisodeContractCopyWith<$Res>? get nextEpisode {
    if (_value.nextEpisode == null) {
      return null;
    }

    return $TVEpisodeContractCopyWith<$Res>(_value.nextEpisode!, (value) {
      return _then(_value.copyWith(nextEpisode: value) as $Val);
    });
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
      {int? budget,
      List<GenresContract>? genres,
      double? revenue,
      double? runtime,
      String? status,
      @JsonKey(name: 'episode_run_time') List<int>? episodeRunTime,
      @JsonKey(name: 'in_production') bool? inProduction,
      @JsonKey(name: 'last_air_date') DateTime? lastAirDate,
      @JsonKey(name: 'next_episode_to_air') TVEpisodeContract? nextEpisode,
      @JsonKey(name: 'number_of_episodes') int? numberOfEpisodes,
      @JsonKey(name: 'number_of_seasons') int? numberOfSeasons,
      @JsonKey(name: 'seasons') List<SeasonContract?>? seasons,
      @JsonKey(name: 'production_companies')
      List<ProductionCompaniesContract>? productionCompanies});

  @override
  $TVEpisodeContractCopyWith<$Res>? get nextEpisode;
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
    Object? budget = freezed,
    Object? genres = freezed,
    Object? revenue = freezed,
    Object? runtime = freezed,
    Object? status = freezed,
    Object? episodeRunTime = freezed,
    Object? inProduction = freezed,
    Object? lastAirDate = freezed,
    Object? nextEpisode = freezed,
    Object? numberOfEpisodes = freezed,
    Object? numberOfSeasons = freezed,
    Object? seasons = freezed,
    Object? productionCompanies = freezed,
  }) {
    return _then(_$MovieDetailsContractImpl(
      budget: freezed == budget
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as int?,
      genres: freezed == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<GenresContract>?,
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
              as TVEpisodeContract?,
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
              as List<SeasonContract?>?,
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
      {this.budget,
      final List<GenresContract>? genres,
      this.revenue,
      this.runtime,
      this.status,
      @JsonKey(name: 'episode_run_time') final List<int>? episodeRunTime,
      @JsonKey(name: 'in_production') this.inProduction,
      @JsonKey(name: 'last_air_date') this.lastAirDate,
      @JsonKey(name: 'next_episode_to_air') this.nextEpisode,
      @JsonKey(name: 'number_of_episodes') this.numberOfEpisodes,
      @JsonKey(name: 'number_of_seasons') this.numberOfSeasons,
      @JsonKey(name: 'seasons') final List<SeasonContract?>? seasons,
      @JsonKey(name: 'production_companies')
      final List<ProductionCompaniesContract>? productionCompanies})
      : _genres = genres,
        _episodeRunTime = episodeRunTime,
        _seasons = seasons,
        _productionCompanies = productionCompanies;

  factory _$MovieDetailsContractImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieDetailsContractImplFromJson(json);

  @override
  final int? budget;
  final List<GenresContract>? _genres;
  @override
  List<GenresContract>? get genres {
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
  final List<int>? _episodeRunTime;
  @override
  @JsonKey(name: 'episode_run_time')
  List<int>? get episodeRunTime {
    final value = _episodeRunTime;
    if (value == null) return null;
    if (_episodeRunTime is EqualUnmodifiableListView) return _episodeRunTime;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'in_production')
  final bool? inProduction;
  @override
  @JsonKey(name: 'last_air_date')
  final DateTime? lastAirDate;
  @override
  @JsonKey(name: 'next_episode_to_air')
  final TVEpisodeContract? nextEpisode;
  @override
  @JsonKey(name: 'number_of_episodes')
  final int? numberOfEpisodes;
  @override
  @JsonKey(name: 'number_of_seasons')
  final int? numberOfSeasons;
  final List<SeasonContract?>? _seasons;
  @override
  @JsonKey(name: 'seasons')
  List<SeasonContract?>? get seasons {
    final value = _seasons;
    if (value == null) return null;
    if (_seasons is EqualUnmodifiableListView) return _seasons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

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
    return 'MovieDetailsContract(budget: $budget, genres: $genres, revenue: $revenue, runtime: $runtime, status: $status, episodeRunTime: $episodeRunTime, inProduction: $inProduction, lastAirDate: $lastAirDate, nextEpisode: $nextEpisode, numberOfEpisodes: $numberOfEpisodes, numberOfSeasons: $numberOfSeasons, seasons: $seasons, productionCompanies: $productionCompanies)';
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
            const DeepCollectionEquality().equals(other._seasons, _seasons) &&
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
      const DeepCollectionEquality().hash(_episodeRunTime),
      inProduction,
      lastAirDate,
      nextEpisode,
      numberOfEpisodes,
      numberOfSeasons,
      const DeepCollectionEquality().hash(_seasons),
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
          {final int? budget,
          final List<GenresContract>? genres,
          final double? revenue,
          final double? runtime,
          final String? status,
          @JsonKey(name: 'episode_run_time') final List<int>? episodeRunTime,
          @JsonKey(name: 'in_production') final bool? inProduction,
          @JsonKey(name: 'last_air_date') final DateTime? lastAirDate,
          @JsonKey(name: 'next_episode_to_air')
          final TVEpisodeContract? nextEpisode,
          @JsonKey(name: 'number_of_episodes') final int? numberOfEpisodes,
          @JsonKey(name: 'number_of_seasons') final int? numberOfSeasons,
          @JsonKey(name: 'seasons') final List<SeasonContract?>? seasons,
          @JsonKey(name: 'production_companies')
          final List<ProductionCompaniesContract>? productionCompanies}) =
      _$MovieDetailsContractImpl;

  factory _MovieDetailsContract.fromJson(Map<String, dynamic> json) =
      _$MovieDetailsContractImpl.fromJson;

  @override
  int? get budget;
  @override
  List<GenresContract>? get genres;
  @override
  double? get revenue;
  @override
  double? get runtime;
  @override
  String? get status;
  @override
  @JsonKey(name: 'episode_run_time')
  List<int>? get episodeRunTime;
  @override
  @JsonKey(name: 'in_production')
  bool? get inProduction;
  @override
  @JsonKey(name: 'last_air_date')
  DateTime? get lastAirDate;
  @override
  @JsonKey(name: 'next_episode_to_air')
  TVEpisodeContract? get nextEpisode;
  @override
  @JsonKey(name: 'number_of_episodes')
  int? get numberOfEpisodes;
  @override
  @JsonKey(name: 'number_of_seasons')
  int? get numberOfSeasons;
  @override
  @JsonKey(name: 'seasons')
  List<SeasonContract?>? get seasons;
  @override
  @JsonKey(name: 'production_companies')
  List<ProductionCompaniesContract>? get productionCompanies;
  @override
  @JsonKey(ignore: true)
  _$$MovieDetailsContractImplCopyWith<_$MovieDetailsContractImpl>
      get copyWith => throw _privateConstructorUsedError;
}
