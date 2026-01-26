

import 'package:travel_app/src/core/monitoring/crashlytics/crashlytics_provider.dart';

/// Main crashlytics class that supports multiple providers
class Crashlytics {
  static List<CrashlyticsProvider> _providers = [];
  static bool _enableCrashlytics = true;

  /// Initialize crashlytics with providers
  static void initialize(
    List<CrashlyticsProvider> providers, {
    bool enableCrashlytics = true,
  }) {
    _providers = providers;
    _enableCrashlytics = enableCrashlytics;
  }

  /// Record an error
  static Future<void> recordError(
    dynamic exception,
    StackTrace? stackTrace, {
    String? reason,
    Map<String, dynamic>? data,
  }) async {
    if (!_enableCrashlytics) return;
    await Future.wait(
      _providers.map(
        (provider) => provider.recordError(
          exception,
          stackTrace,
          reason: reason,
          data: data,
        ),
      ),
    );
  }

  /// Log a message
  static Future<void> log(String message) async {
    if (!_enableCrashlytics) return;
    await Future.wait(_providers.map((provider) => provider.log(message)));
  }

  /// Set user ID for crash reports
  static Future<void> setUserId(String userId) async {
    if (!_enableCrashlytics) return;
    await Future.wait(_providers.map((provider) => provider.setUserId(userId)));
  }

  /// Clear user ID (e.g., on logout)
  static Future<void> clearUserId() async {
    if (!_enableCrashlytics) return;
    await Future.wait(_providers.map((provider) => provider.clearUserId()));
  }
}
