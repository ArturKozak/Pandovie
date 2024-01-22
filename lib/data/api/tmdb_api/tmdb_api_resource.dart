//Veryfi imports

import 'package:dio/dio.dart' as dio;
import 'package:pandovie/configuration/pandovie_configuration.dart';
import 'package:pandovie/data/api/tmdb_api/contracts/collection_contract/collection_contract.dart';
import 'package:pandovie/data/api/tmdb_api/contracts/movie_details_contract/movie_details_contract.dart';
import 'package:retrofit/retrofit.dart';

part 'tmdb_api_resource.g.dart';

@RestApi()
abstract class TMDBApiResource {
  factory TMDBApiResource(
    dio.Dio dio, {
    String baseUrl,
  }) = _TMDBApiResource;

  @GET('/search/movie')
  @Headers(<String, dynamic>{
    "Accept": "application/json",
    "Authorization": PandovieConfiguration.accessTmdbKey,
  })
  Future<MoviesCollectionContract> getMoviesByQuery({
    @Query('query') required String query,
    @Query('include_adult') bool? includeAdult = false,
    @Query('language') String? language = 'en-US',
    @Query('page') int? page = 2,
  });

  @GET('/search/tv')
  @Headers(<String, dynamic>{
    "Accept": "application/json",
    "Authorization": PandovieConfiguration.accessTmdbKey,
  })
  Future<MoviesCollectionContract> getTVByQuery({
    @Query('query') required String query,
    @Query('include_adult') bool? includeAdult = false,
    @Query('language') String? language = 'en-US',
    @Query('page') int? page = 2,
  });

  @GET('/trending/movie/day')
  @Headers(<String, dynamic>{
    "Accept": "application/json",
    "Authorization": PandovieConfiguration.accessTmdbKey,
  })
  Future<MoviesCollectionContract> getNowMoviesPlaying({
    @Query('include_adult') bool? includeAdult = false,
    @Query('language') String? language = 'en-US',
    @Query('page') int? page = 1,
  });

  @GET('/trending/tv/day')
  @Headers(<String, dynamic>{
    "Accept": "application/json",
    "Authorization": PandovieConfiguration.accessTmdbKey,
  })
  Future<MoviesCollectionContract> getNowTVPlaying({
    @Query('include_adult') bool? includeAdult = false,
    @Query('language') String? language = 'en-US',
    @Query('page') int? page = 1,
  });

  @GET('/movie/upcoming')
  @Headers(<String, dynamic>{
    "Accept": "application/json",
    "Authorization": PandovieConfiguration.accessTmdbKey,
  })
  Future<MoviesCollectionContract> getMoviesUpcoming({
    @Query('include_adult') bool? includeAdult = false,
    @Query('language') String? language = 'en-US',
    @Query('page') int? page = 1,
    @Query('release_date.gte') String? minDate,
    @Query('release_date.lte') String? maxDate,
  });

  @GET('tv/on_the_air')
  @Headers(<String, dynamic>{
    "Accept": "application/json",
    "Authorization": PandovieConfiguration.accessTmdbKey,
  })
  Future<MoviesCollectionContract> getTVUpcoming({
    @Query('include_adult') bool? includeAdult = false,
    @Query('language') String? language = 'en-US',
    @Query('page') int? page = 1,
    @Query('tv/on_the_air') String? timezone,

  });

  @GET('/movie/{movie_id}')
  @Headers(<String, dynamic>{
    "Accept": "application/json",
    "Authorization": PandovieConfiguration.accessTmdbKey,
  })
  Future<MovieDetailsContract> getMovieDetails({
    @Path('movie_id') required int id,
    @Query('language') String? language = 'en-US',
  });

  @GET('/tv/{series_id}')
  @Headers(<String, dynamic>{
    "Accept": "application/json",
    "Authorization": PandovieConfiguration.accessTmdbKey,
  })
  Future<MovieDetailsContract> getTVDetails({
    @Path('series_id') required int id,
    @Query('language') String? language = 'en-US',
  });
}
