import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:pandovie/module/collection/collection_page.dart';
import 'package:pandovie/module/search/search_page.dart';
import 'package:pandovie/module/root/root_page.dart';

part 'auto_route.gr.dart';

@singleton
@AutoRouterConfig(replaceInRouteName: 'Screen,Route, Page')
class AppRouter extends _$AppRouter {
  static const rootSignature = '/';
  static const searchRoute = 'search';
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
              path: searchRoute,
              page: SearchPageRoute.page,
              initial: true,
            ),
            AutoRoute(
              path: collectionRoute,
              page: CollectionPageRoute.page,
            ),
          ],
        ),
      ];

  static Future<void> navigateToSearchPage() {
    return GetIt.I<AppRouter>().navigateNamed('$rootSignature$searchRoute');
  }

  static Future<void> navigateToCollectionPage() {
    return GetIt.I<AppRouter>().navigateNamed('$rootSignature$collectionRoute');
  }
}
