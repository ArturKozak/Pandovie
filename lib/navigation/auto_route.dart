import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:pandovie/data/models/movie_model.dart';
import 'package:pandovie/module/collection/collection_page.dart';
import 'package:pandovie/module/details/details_page.dart';
import 'package:pandovie/module/search/home_page.dart';
import 'package:pandovie/module/root/root_page.dart';

part 'auto_route.gr.dart';

@singleton
@AutoRouterConfig(replaceInRouteName: 'Screen,Route, Page')
class AppRouter extends _$AppRouter {
  static const rootSignature = '/';
  static const homeRoute = 'home';
  static const collectionRoute = 'collection';

  @override
  List<AutoRoute> get routes => [
        CustomRoute(
          page: RootPageRoute.page,
          path: rootSignature,
          transitionsBuilder: TransitionsBuilders.fadeIn,
          initial: true,
          children: [
            AutoRoute(
              path: homeRoute,
              page: HomePageRoute.page,
              initial: true,
            ),
            AutoRoute(
              path: collectionRoute,
              page: CollectionPageRoute.page,
            ),
          ],
        ),
        CustomRoute(
          page: DetailsMoviePageRoute.page,
          path: '/details',
          transitionsBuilder: TransitionsBuilders.fadeIn,
        ),
      ];

  static Future<void> navigateToHomePage() {
    return GetIt.I<AppRouter>().navigateNamed('$rootSignature$homeRoute');
  }

  static Future<void> navigateToDetailsPage(MovieModel movie) {
    return GetIt.I<AppRouter>().navigate(DetailsMoviePageRoute(movie: movie));
  }

  static Future<void> navigateToCollectionPage() {
    return GetIt.I<AppRouter>().navigateNamed('$rootSignature$collectionRoute');
  }
}
