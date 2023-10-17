// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tmdb_api_resource.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _TMDBApiResource implements TMDBApiResource {
  _TMDBApiResource(
    this._dio, {
    this.baseUrl,
  });

  final dio.Dio _dio;

  String? baseUrl;

  @override
  Future<MoviesCollectionContract> getMoviesByQuery({
    required String query,
    bool? includeAdult = false,
    String? language = 'en-US',
    int? page = 2,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'query': query,
      r'include_adult': includeAdult,
      r'language': language,
      r'page': page,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{
      r'Accept': 'application/json',
      r'Authorization':
          'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJmMmU4ZjZjYjQ0M2ViNDUzNmZjNDU0MzEwY2MxYTUzNyIsInN1YiI6IjY0ZWNkMTEwYzNjODkxMDEzYWIzNzc4ZiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.HxX-3wkwCdOI0d-Z2ZIVLvhnv61iGqT0pvpzng9zQQo',
    };
    _headers.removeWhere((k, v) => v == null);
    const Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<MoviesCollectionContract>(dio.Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/search/movie',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = MoviesCollectionContract.fromJson(_result.data!);
    return value;
  }

  @override
  Future<MoviesCollectionContract> getNowPlaying({
    bool? includeAdult = false,
    String? language = 'en-US',
    int? page = 1,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'include_adult': includeAdult,
      r'language': language,
      r'page': page,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{
      r'Accept': 'application/json',
      r'Authorization':
          'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJmMmU4ZjZjYjQ0M2ViNDUzNmZjNDU0MzEwY2MxYTUzNyIsInN1YiI6IjY0ZWNkMTEwYzNjODkxMDEzYWIzNzc4ZiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.HxX-3wkwCdOI0d-Z2ZIVLvhnv61iGqT0pvpzng9zQQo',
    };
    _headers.removeWhere((k, v) => v == null);
    const Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<MoviesCollectionContract>(dio.Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/trending/movie/week',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = MoviesCollectionContract.fromJson(_result.data!);
    return value;
  }

  @override
  Future<MoviesCollectionContract> getUpcoming({
    bool? includeAdult = false,
    String? language = 'en-US',
    int? page = 1,
    String? minDate,
    String? maxDate,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'include_adult': includeAdult,
      r'language': language,
      r'page': page,
      r'release_date.gte': minDate,
      r'release_date.lte': maxDate,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{
      r'Accept': 'application/json',
      r'Authorization':
          'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJmMmU4ZjZjYjQ0M2ViNDUzNmZjNDU0MzEwY2MxYTUzNyIsInN1YiI6IjY0ZWNkMTEwYzNjODkxMDEzYWIzNzc4ZiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.HxX-3wkwCdOI0d-Z2ZIVLvhnv61iGqT0pvpzng9zQQo',
    };
    _headers.removeWhere((k, v) => v == null);
    const Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<MoviesCollectionContract>(dio.Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/movie/upcoming',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = MoviesCollectionContract.fromJson(_result.data!);
    return value;
  }

  @override
  Future<MovieDetailsContract> getMovieDetails({
    required int id,
    String? language = 'en-US',
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'language': language};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{
      r'Accept': 'application/json',
      r'Authorization':
          'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJmMmU4ZjZjYjQ0M2ViNDUzNmZjNDU0MzEwY2MxYTUzNyIsInN1YiI6IjY0ZWNkMTEwYzNjODkxMDEzYWIzNzc4ZiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.HxX-3wkwCdOI0d-Z2ZIVLvhnv61iGqT0pvpzng9zQQo',
    };
    _headers.removeWhere((k, v) => v == null);
    const Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<MovieDetailsContract>(dio.Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/movie/${id}',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = MovieDetailsContract.fromJson(_result.data!);
    return value;
  }

  dio.RequestOptions _setStreamType<T>(dio.RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == dio.ResponseType.bytes ||
            requestOptions.responseType == dio.ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = dio.ResponseType.plain;
      } else {
        requestOptions.responseType = dio.ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(
    String dioBaseUrl,
    String? baseUrl,
  ) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}
