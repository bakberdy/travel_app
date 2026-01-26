// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomePage();
    },
  );
}

/// generated route for
/// [MainNavigationPage]
class MainNavigationRoute extends PageRouteInfo<void> {
  const MainNavigationRoute({List<PageRouteInfo>? children})
    : super(MainNavigationRoute.name, initialChildren: children);

  static const String name = 'MainNavigationRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const MainNavigationPage();
    },
  );
}

/// generated route for
/// [OnboardingPage]
class OnboardingRoute extends PageRouteInfo<void> {
  const OnboardingRoute({List<PageRouteInfo>? children})
    : super(OnboardingRoute.name, initialChildren: children);

  static const String name = 'OnboardingRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const OnboardingPage();
    },
  );
}

/// generated route for
/// [RoutesPage]
class RoutesRoute extends PageRouteInfo<RoutesRouteArgs> {
  RoutesRoute({
    Key? key,
    RouteCategoryEntity? category,
    RouteTypeEntity? routeType,
    List<PageRouteInfo>? children,
  }) : super(
         RoutesRoute.name,
         args: RoutesRouteArgs(
           key: key,
           category: category,
           routeType: routeType,
         ),
         initialChildren: children,
       );

  static const String name = 'RoutesRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<RoutesRouteArgs>(
        orElse: () => const RoutesRouteArgs(),
      );
      return RoutesPage(
        key: args.key,
        category: args.category,
        routeType: args.routeType,
      );
    },
  );
}

class RoutesRouteArgs {
  const RoutesRouteArgs({this.key, this.category, this.routeType});

  final Key? key;

  final RouteCategoryEntity? category;

  final RouteTypeEntity? routeType;

  @override
  String toString() {
    return 'RoutesRouteArgs{key: $key, category: $category, routeType: $routeType}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! RoutesRouteArgs) return false;
    return key == other.key &&
        category == other.category &&
        routeType == other.routeType;
  }

  @override
  int get hashCode => key.hashCode ^ category.hashCode ^ routeType.hashCode;
}
