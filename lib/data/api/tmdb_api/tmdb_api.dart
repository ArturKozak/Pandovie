import 'package:dio/dio.dart';
import 'package:pandovie/data/api/tmdb_api/tmdb_api_resource.dart';
import 'package:pandovie/data/models/movie_model.dart';
import 'package:pandovie/data/models/production_companies/production_companies_model.dart';
import 'package:pandovie/extension/date_time_extension.dart';
import 'package:pandovie/utils/image_helper.dart';

class TMDBApi {
  final String baseUrl;
  final Dio dio;
  late final TMDBApiResource _tmdbResource;

  TMDBApi({
    required this.baseUrl,
    required this.dio,
  }) : super() {
    _tmdbResource = TMDBApiResource(
      dio,
      baseUrl: baseUrl,
    );
  }

  Future<MovieModel> getMovieImages({
    required MovieModel model,
  }) async {
    final fullCompanyList = <ProductionCompaniesModel>[];

    if (model.productionCompanies != null &&
        model.productionCompanies!.isNotEmpty) {
      final companyImages = await Future.wait(
        model.productionCompanies!.map((company) {
          return ImageHelper.getNetworkImage(company.logoPathRaw);
        }),
      );

      for (var i = 0; i < model.productionCompanies!.length; i++) {
        final fullCompanyModel = model.productionCompanies![i].copyWith(
          logoPath: companyImages[i],
        );

        fullCompanyList.add(fullCompanyModel);
      }
    }

    return model.copyWith(
      productionCompanies: fullCompanyList,
      posterImage: await ImageHelper.getNetworkImage(model.posterImageRaw),
    );
  }

  Future<MovieModel> getMovieDetails({
    required MovieModel model,
    String? language,
  }) async {
    final response = await _tmdbResource.getMovieDetails(
      id: model.id,
      language: language,
    );

    final fullModel = MovieModel.fromDetailsContract(
      response,
      model,
    );

    return fullModel;
  }

  Future<List<MovieModel>> getNowPlaying({
    bool? includeAdult,
    String? language,
    int? page,
  }) async {
    final moviesList = <MovieModel>[];

    final response = await _tmdbResource.getNowPlaying(
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

    final movies = await Future.wait(
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
      }).toList(),
    );

    return movies;
  }

  Future<List<MovieModel>> getUpcoming({
    bool? includeAdult,
    String? language,
    int? page,
  }) async {
    final moviesList = <MovieModel>[];

    final response = await _tmdbResource.getUpcoming(
      includeAdult: includeAdult,
      language: language,
      page: page,
      minDate: DateTime.now()
          .add(
            const Duration(days: 50),
          )
          .formatDateForQuery(),
      maxDate: DateTime.now()
          .add(
            const Duration(days: 130),
          )
          .formatDateForQuery(),
    );

    for (final movieContract in response.results) {
      final model = MovieModel.fromContract(movieContract);

      if (model.posterImageRaw == null) {
        continue;
      }

      moviesList.add(model);
    }

    final movies = await Future.wait(
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
      }).toList(),
    );

    return movies;
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

    final movies = await Future.wait(
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
      }).toList(),
    );

    return movies;
  }
}
