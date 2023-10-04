import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pandovie/configuration/pandovie_configuration.dart';
import 'package:pandovie/data/api/tmdb_api/tmdb_api.dart';

void main() {
  final tmdb = TMDBApi(
    dio: Dio(),
    baseUrl: PandovieConfiguration.basicUrl,
  );

  group('Test api request to TMDB', () {
    test('Get movies by query', () async {
      final result = await tmdb.getMoviesByQuery(query: 'Batman');

      expect(result[0].title, 'Batman');
    });
  });
}
