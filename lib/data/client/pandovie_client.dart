import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pandovie/configuration/pandovie_configuration.dart';
import 'package:pandovie/data/api/tmdb_api/tmdb_api.dart';

@injectable
class PandovieClient {
  late final TMDBApi _tmdbApi;

  TMDBApi get tmdbApi => _tmdbApi;

  PandovieClient() {
    final dio = Dio();

    _tmdbApi = TMDBApi(
      baseUrl: PandovieConfiguration.basicUrl,
      dio: dio,
    );
  }
}
