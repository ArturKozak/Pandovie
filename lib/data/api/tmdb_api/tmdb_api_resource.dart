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

  @GET('/trending/movie/week')
  @Headers(<String, dynamic>{
    "Accept": "application/json",
    "Authorization": PandovieConfiguration.accessTmdbKey,
  })
  Future<MoviesCollectionContract> getNowPlaying({
    @Query('include_adult') bool? includeAdult = false,
    @Query('language') String? language = 'en-US',
    @Query('page') int? page = 1,
  });

  @GET('/movie/upcoming')
  @Headers(<String, dynamic>{
    "Accept": "application/json",
    "Authorization": PandovieConfiguration.accessTmdbKey,
  })
  Future<MoviesCollectionContract> getUpcoming({
    @Query('include_adult') bool? includeAdult = false,
    @Query('language') String? language = 'en-US',
    @Query('page') int? page = 1,
    @Query('release_date.gte') String? minDate,
    @Query('release_date.lte') String? maxDate,
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
}
