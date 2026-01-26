import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';

import '../logger.dart';

/// Observer that logs all screen navigation events for debugging purposes.
///
/// This class integrates with AutoRoute to monitor navigation changes and
/// logs detailed information about:
/// - Screen opens (when user navigates to new screen)
/// - Screen closes (when user goes back)
/// - Screen replacements (when current screen is swapped)
/// - Tab switches (in bottom navigation or tab bars)
/// - Navigation gestures (back swipe on iOS)
///
/// All logs include contextual information like screen names and previous screens
/// to help developers debug navigation flows during development.
@lazySingleton
class LoggerPageObserver implements AutoRouteObserver {
  /// Extracts a clean, readable screen name from a route.
  ///
  /// Examples:
  /// - '/home' -> 'home'
  /// - '/profile/edit' -> 'profile_edit'
  /// - '/HomeRoute' -> 'home'
  String _getScreenName(Route<dynamic>? route) {
    if (route?.settings.name == null || route!.settings.name!.isEmpty) {
      return 'unknown_screen';
    }

    String name = route.settings.name!;

    // Remove leading slash
    if (name.startsWith('/')) {
      name = name.substring(1);
    }

    // Remove 'Route' suffix if present (e.g., HomeRoute -> Home)
    if (name.endsWith('Route')) {
      name = name.substring(0, name.length - 5);
    }

    // Convert PascalCase to snake_case
    name = name.replaceAllMapped(
      RegExp(r'([a-z])([A-Z])'),
      (match) => '${match.group(1)}_${match.group(2)!.toLowerCase()}',
    );

    // Convert slashes to underscores for nested routes
    name = name.replaceAll('/', '_').toLowerCase();

    return name.isEmpty ? 'home' : name;
  }

  /// Extracts tab name from TabPageRoute.
  String _getTabName(TabPageRoute route) {
    return route.name.replaceAll('Route', '').replaceAllMapped(
          RegExp(r'([a-z])([A-Z])'),
          (match) => '${match.group(1)}_${match.group(2)!.toLowerCase()}',
        ).toLowerCase();
  }

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    final screenName = _getScreenName(route);
    final previousScreenName = _getScreenName(previousRoute);

    Logger.info(
      'Push $screenName from $previousScreenName',
      category: LogCategory.navigation,
    );
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    final screenName = _getScreenName(route);
    final previousScreenName = _getScreenName(previousRoute);

    Logger.info(
      'Pop $screenName to $previousScreenName',
      category: LogCategory.navigation,
    );
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    final newScreenName = _getScreenName(newRoute);
    final oldScreenName = _getScreenName(oldRoute);

    Logger.info(
      'Replace $oldScreenName with $newScreenName',
      category: LogCategory.navigation,
    );
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    final screenName = _getScreenName(route);
    final previousScreenName = _getScreenName(previousRoute);

    Logger.info(
      'Remove $screenName (previous: $previousScreenName)',
      category: LogCategory.navigation,
    );
  }

  @override
  void didChangeTop(
    Route<dynamic> topRoute,
    Route<dynamic>? previousTopRoute,
  ) {
    final screenName = _getScreenName(topRoute);
    final previousScreenName = _getScreenName(previousTopRoute);

    Logger.debug(
      'Visible $screenName (was: $previousScreenName)',
      category: LogCategory.navigation,
    );
  }

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {
    final tabName = _getTabName(route);
    final previousTabName = _getTabName(previousRoute);

    Logger.info(
      'Tab changed from $previousTabName to $tabName',
      category: LogCategory.navigation,
    );
  }

  @override
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) {
    final tabName = _getTabName(route);
    final previousTabName =
        previousRoute != null ? _getTabName(previousRoute) : 'none';

    Logger.info(
      'Tab initialized $tabName (previous: $previousTabName)',
      category: LogCategory.navigation,
    );
  }

  @override
  void didStartUserGesture(
    Route<dynamic> route,
    Route<dynamic>? previousRoute,
  ) {
    final screenName = _getScreenName(route);
    final previousScreenName = _getScreenName(previousRoute);

    Logger.debug(
      'Gesture started on $screenName to $previousScreenName',
      category: LogCategory.navigation,
    );
  }

  @override
  void didStopUserGesture() {
    Logger.debug(
      'Gesture stopped',
      category: LogCategory.navigation,
    );
  }

  @override
  NavigatorState? get navigator => null;

  @override
  void subscribe(AutoRouteAware routeAware, RouteData<dynamic> route) {
    // Not used for basic route observation
  }

  @override
  void unsubscribe(AutoRouteAware routeAware) {
    // Not used for basic route observation
  }
}
