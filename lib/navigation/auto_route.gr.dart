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
    RootPageRoute.name: (routeData) {
      final args = routeData.argsAs<RootPageRouteArgs>(
          orElse: () => const RootPageRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: RootPage(key: args.key)),
      );
    },
    SearchPageRoute.name: (routeData) {
      final args = routeData.argsAs<SearchPageRouteArgs>(
          orElse: () => const SearchPageRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: SearchPage(key: args.key)),
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

/// generated route for
/// [SearchPage]
class SearchPageRoute extends PageRouteInfo<SearchPageRouteArgs> {
  SearchPageRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          SearchPageRoute.name,
          args: SearchPageRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'SearchPageRoute';

  static const PageInfo<SearchPageRouteArgs> page =
      PageInfo<SearchPageRouteArgs>(name);
}

class SearchPageRouteArgs {
  const SearchPageRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'SearchPageRouteArgs{key: $key}';
  }
}
