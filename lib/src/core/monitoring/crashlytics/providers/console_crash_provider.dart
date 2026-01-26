
import 'package:travel_app/src/core/monitoring/crashlytics/crashlytics_provider.dart';

import '../../logger.dart';

/// Console-based crash provider for development/testing
/// Logs crashes to console instead of sending to external service
class ConsoleCrashProvider implements CrashlyticsProvider {
  String? _userId;

  @override
  Future<void> recordError(
    dynamic exception,
    StackTrace? stackTrace, {
    String? reason,
    Map<String, dynamic>? data,
  }) async {
    final parts = <String>[];
    
    if (reason != null) {
      parts.add('Reason: $reason');
    }
    
    if (_userId != null) {
      parts.add('User: $_userId');
    }
    
    if (data != null && data.isNotEmpty) {
      parts.add('Data: $data');
    }
    
    final message = parts.isEmpty 
        ? 'Crash recorded: $exception'
        : 'Crash recorded: $exception (${parts.join(', ')})';

    Logger.error(
      message,
      category: LogCategory.analytics,
      error: exception,
      stackTrace: stackTrace,
    );
  }

  @override
  Future<void> log(String message) async {
    Logger.debug(
      'Crashlytics: $message',
      category: LogCategory.analytics,
    );
  }

  @override
  Future<void> setUserId(String userId) async {
    _userId = userId;
    Logger.debug(
      'Crashlytics user set: $userId',
      category: LogCategory.analytics,
    );
  }

  @override
  Future<void> clearUserId() async {
    _userId = null;
    Logger.debug(
      'Crashlytics user cleared',
      category: LogCategory.analytics,
    );
  }
}
