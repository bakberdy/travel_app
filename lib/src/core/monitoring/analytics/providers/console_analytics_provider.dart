

import 'package:travel_app/src/core/monitoring/logger.dart';

import '../analytics.dart';
import '../analytics_events.dart';

/// Console Analytics provider for development/debugging
class ConsoleAnalyticsProvider implements AnalyticsProvider {
  @override
  Future<void> track(AnalyticsEvent event) async {
    Logger.info('Event tracked: ${event.eventName}', category: LogCategory.analytics);
    if (event.propertiesMap != null) {
      Logger.info('   Properties: ${event.propertiesMap}', category: LogCategory.analytics);
    }
  }

  @override
  Future<void> setUserId(String? userId) async {
    Logger.info('User ID set: $userId', category: LogCategory.analytics);
  }

  @override
  Future<void> setUserProperty(String name, dynamic value) async {
    Logger.info('User property set: $name = $value', category: LogCategory.analytics);
  }
}
