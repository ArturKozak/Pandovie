// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'auto_route.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    CollectionPageRoute.name: (routeData) {
      final args = routeData.argsAs<CollectionPageRouteArgs>(
          orElse: () => const CollectionPageRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: CollectionPage(key: args.key)),
      );
    },
    DetailsMoviePageRoute.name: (routeData) {
      final args = routeData.argsAs<DetailsMoviePageRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(
            child: DetailsMoviePage(
          key: args.key,
          movie: args.movie,
        )),
      );
    },
    HomePageRoute.name: (routeData) {
      final args = routeData.argsAs<HomePageRouteArgs>(
          orElse: () => const HomePageRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: HomePage(key: args.key)),
      );
    },
    RootPageRoute.name: (routeData) {
      final args = routeData.argsAs<RootPageRouteArgs>(
          orElse: () => const RootPageRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: RootPage(key: args.key)),
      );
    },
  };
}

/// generated route for
/// [CollectionPage]
class CollectionPageRoute extends PageRouteInfo<CollectionPageRouteArgs> {
  CollectionPageRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          CollectionPageRoute.name,
          args: CollectionPageRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'CollectionPageRoute';

  static const PageInfo<CollectionPageRouteArgs> page =
      PageInfo<CollectionPageRouteArgs>(name);
}

class CollectionPageRouteArgs {
  const CollectionPageRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'CollectionPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [DetailsMoviePage]
class DetailsMoviePageRoute extends PageRouteInfo<DetailsMoviePageRouteArgs> {
  DetailsMoviePageRoute({
    Key? key,
    required MovieModel movie,
    List<PageRouteInfo>? children,
  }) : super(
          DetailsMoviePageRoute.name,
          args: DetailsMoviePageRouteArgs(
            key: key,
            movie: movie,
          ),
          initialChildren: children,
        );

  static const String name = 'DetailsMoviePageRoute';

  static const PageInfo<DetailsMoviePageRouteArgs> page =
      PageInfo<DetailsMoviePageRouteArgs>(name);
}

class DetailsMoviePageRouteArgs {
  const DetailsMoviePageRouteArgs({
    this.key,
    required this.movie,
  });

  final Key? key;

  final MovieModel movie;

  @override
  String toString() {
    return 'DetailsMoviePageRouteArgs{key: $key, movie: $movie}';
  }
}

/// generated route for
/// [HomePage]
class HomePageRoute extends PageRouteInfo<HomePageRouteArgs> {
  HomePageRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          HomePageRoute.name,
          args: HomePageRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'HomePageRoute';

  static const PageInfo<HomePageRouteArgs> page =
      PageInfo<HomePageRouteArgs>(name);
}

class HomePageRouteArgs {
  const HomePageRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'HomePageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [RootPage]
class RootPageRoute extends PageRouteInfo<RootPageRouteArgs> {
  RootPageRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          RootPageRoute.name,
          args: RootPageRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'RootPageRoute';

  static const PageInfo<RootPageRouteArgs> page =
      PageInfo<RootPageRouteArgs>(name);
}

class RootPageRouteArgs {
  const RootPageRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'RootPageRouteArgs{key: $key}';
  }
}
