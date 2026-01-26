import 'analytics_events.dart';

/// Abstract analytics provider interface
abstract class AnalyticsProvider {
  Future<void> track(AnalyticsEvent event);
  Future<void> setUserId(String? userId);
  Future<void> setUserProperty(String name, dynamic value);
}

/// Main analytics class that supports multiple providers
class Analytics {
  static List<AnalyticsProvider> _providers = [];
  static bool _enableAnalytics = true;

  /// Initialize analytics with providers
  static void initialize(List<AnalyticsProvider> providers, {bool enableAnalytics = true}) {
    _providers = providers;
    _enableAnalytics = enableAnalytics;
  }

  /// Track a custom analytics event
  static Future<void> track(AnalyticsEvent event) async {
    if (!_enableAnalytics) return;
    await Future.wait(
      _providers.map((provider) => provider.track(event)),
    );
  }

  /// Set user identifier
  static Future<void> setUserId(String? userId) async {
    if (!_enableAnalytics) return;
    await Future.wait(
      _providers.map((provider) => provider.setUserId(userId)),
    );
  }

  /// Set user property
  static Future<void> setUserProperty(String name, dynamic value) async {
    if (!_enableAnalytics) return;
    await Future.wait(
      _providers.map((provider) => provider.setUserProperty(name, value)),
    );
  }
}