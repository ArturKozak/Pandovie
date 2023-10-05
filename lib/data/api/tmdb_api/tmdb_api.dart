import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:pandovie/data/api/tmdb_api/tmdb_api_resource.dart';
import 'package:pandovie/data/models/movie_model.dart';
import 'package:pandovie/data/models/production_companies/production_companies_model.dart';
import 'package:pandovie/utils/image_helper.dart';

class TMDBApi {
  final String baseUrl;
  final Dio dio;
  late final TMDBApiResource _tmdbResource;

  TMDBApi({
    required this.baseUrl,
    required this.dio,
  }) {
    _tmdbResource = TMDBApiResource(
      dio,
      baseUrl: baseUrl,
    );
  }

  Future<MovieModel> getMovieDetails({
    required MovieModel model,
    String? language,
  }) async {
    final fullCompanyList = <ProductionCompaniesModel>[];

    final response = await _tmdbResource.getMovieDetails(
      id: model.id,
      language: language,
    );

    final fullModel = MovieModel.fromDetailsContract(
      response,
      model,
    );

    if (fullModel.productionCompanies != null &&
        fullModel.productionCompanies!.isNotEmpty) {
      List<Uint8List?> companyImages = await Future.wait(
        fullModel.productionCompanies!.map((company) {
          return ImageHelper.getNetworkImage(company.logoPathRaw);
        }),
      );

      for (var i = 0; i < fullModel.productionCompanies!.length; i++) {
        final model = fullModel.productionCompanies![i].copyWith(
          logoPath: companyImages[i],
        );

        fullCompanyList.add(model);
      }
    }

    return model.copyWith(
      productionCompanies: fullCompanyList,
      posterImage: await ImageHelper.getNetworkImage(fullModel.posterImageRaw),
    );
  }

  Future<List<MovieModel>> getMoviesByQuery({
    required String query,
    bool? includeAdult,
    String? language,
    int? page,
  }) async {
    final moviesList = <MovieModel>[];

    final response = await _tmdbResource.getMoviesByQuery(
      query: query,
      includeAdult: includeAdult,
      language: language,
      page: page,
    );

    for (final movieContract in response.results) {
      final model = MovieModel.fromContract(movieContract);

      if (model.posterImageRaw == null) {
        continue;
      }

      moviesList.add(model);
    }

    List<MovieModel> movies = await Future.wait(
      moviesList.map((movie) async {
        if (movie.budget == null &&
            movie.genres == null &&
            movie.revenue == null &&
            movie.runtime == null &&
            movie.status == null &&
            movie.productionCompanies == null) {
          return getMovieDetails(
            model: movie,
            language: language,
          );
        }

        return movie;
      }),
    );

    return movies;
  }
}
