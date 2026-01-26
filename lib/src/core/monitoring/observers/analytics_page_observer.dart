import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';

import '../analytics/analytics.dart';
import '../analytics/analytics_events.dart';

/// Observer that automatically tracks all screen navigation events in the app.
///
/// This class integrates with AutoRoute to monitor navigation changes and
/// logs detailed analytics events for:
/// - Screen opens (when user navigates to new screen)
/// - Screen closes (when user goes back)
/// - Screen replacements (when current screen is swapped)
/// - Tab switches (in bottom navigation or tab bars)
/// - Navigation gestures (back swipe on iOS)
///
/// All events include contextual information like screen names and previous screens
/// to help analytics teams understand user navigation patterns.
@lazySingleton
class AnalyticsPageObserver implements AutoRouteObserver {
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
    // Event: User opened a new screen
    final screenName = _getScreenName(route);
    final previousScreenName = _getScreenName(previousRoute);

    Analytics.track(
      AnalyticsEvent(
        name: AnalyticsEventName.screenOpened,
        properties: {
          AnalyticsProperties.screenName: screenName,
          AnalyticsProperties.previousScreenName: previousScreenName,
          AnalyticsProperties.navigationMethod: 'push',
          AnalyticsProperties.timestamp: DateTime.now().toIso8601String(),
        },
      ),
    );
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    // Event: User closed current screen and went back
    final screenName = _getScreenName(route);
    final previousScreenName = _getScreenName(previousRoute);

    Analytics.track(
      AnalyticsEvent(
        name: AnalyticsEventName.screenClosed,
        properties: {
          AnalyticsProperties.screenName: screenName,
          AnalyticsProperties.previousScreenName: previousScreenName,
          AnalyticsProperties.navigationMethod: 'pop',
          AnalyticsProperties.timestamp: DateTime.now().toIso8601String(),
        },
      ),
    );
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    // Event: Current screen was replaced with another
    final newScreenName = _getScreenName(newRoute);
    final oldScreenName = _getScreenName(oldRoute);

    Analytics.track(
      AnalyticsEvent(
        name: AnalyticsEventName.screenReplaced,
        properties: {
          AnalyticsProperties.screenName: newScreenName,
          AnalyticsProperties.previousScreenName: oldScreenName,
          AnalyticsProperties.navigationMethod: 'replace',
          AnalyticsProperties.timestamp: DateTime.now().toIso8601String(),
        },
      ),
    );
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    // Event: Screen was removed from navigation stack programmatically
    final screenName = _getScreenName(route);
    final previousScreenName = _getScreenName(previousRoute);

    Analytics.track(
      AnalyticsEvent(
        name: AnalyticsEventName.screenRemoved,
        properties: {
          AnalyticsProperties.screenName: screenName,
          AnalyticsProperties.previousScreenName: previousScreenName,
          AnalyticsProperties.navigationMethod: 'remove',
          AnalyticsProperties.timestamp: DateTime.now().toIso8601String(),
        },
      ),
    );
  }

  @override
  void didChangeTop(
    Route<dynamic> topRoute,
    Route<dynamic>? previousTopRoute,
  ) {
    // Event: The top-most visible screen changed
    final screenName = _getScreenName(topRoute);
    final previousScreenName = _getScreenName(previousTopRoute);

    Analytics.track(
      AnalyticsEvent(
        name: AnalyticsEventName.screenBecameVisible,
        properties: {
          AnalyticsProperties.screenName: screenName,
          AnalyticsProperties.previousScreenName: previousScreenName,
          AnalyticsProperties.timestamp: DateTime.now().toIso8601String(),
        },
      ),
    );
  }

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {
    // Event: User switched to a different tab
    final tabName = _getTabName(route);
    final previousTabName = _getTabName(previousRoute);

    Analytics.track(
      AnalyticsEvent(
        name: AnalyticsEventName.tabChanged,
        properties: {
          AnalyticsProperties.tabName: tabName,
          AnalyticsProperties.previousScreenName: previousTabName,
          AnalyticsProperties.timestamp: DateTime.now().toIso8601String(),
        },
      ),
    );
  }

  @override
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) {
    // Event: Tab was initialized for the first time
    final tabName = _getTabName(route);
    final previousTabName = previousRoute != null ? _getTabName(previousRoute) : 'none';

    Analytics.track(
      AnalyticsEvent(
        name: AnalyticsEventName.tabInitialized,
        properties: {
          AnalyticsProperties.tabName: tabName,
          AnalyticsProperties.previousScreenName: previousTabName,
          AnalyticsProperties.timestamp: DateTime.now().toIso8601String(),
        },
      ),
    );
  }

  @override
  void didStartUserGesture(
    Route<dynamic> route,
    Route<dynamic>? previousRoute,
  ) {
    // Event: User started a back gesture (e.g., iOS swipe from edge)
    final screenName = _getScreenName(route);
    final previousScreenName = _getScreenName(previousRoute);

    Analytics.track(
      AnalyticsEvent(
        name: AnalyticsEventName.navigationGestureStarted,
        properties: {
          AnalyticsProperties.screenName: screenName,
          AnalyticsProperties.previousScreenName: previousScreenName,
          AnalyticsProperties.isUserGesture: true,
          AnalyticsProperties.timestamp: DateTime.now().toIso8601String(),
        },
      ),
    );
  }

  @override
  void didStopUserGesture() {
    // Event: User completed or cancelled the back gesture
    Analytics.track(
      AnalyticsEvent(
        name: AnalyticsEventName.navigationGestureStopped,
        properties: {
          AnalyticsProperties.isUserGesture: true,
          AnalyticsProperties.timestamp: DateTime.now().toIso8601String(),
        },
      ),
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
