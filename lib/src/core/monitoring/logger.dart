import 'dart:developer' as developer;
import 'package:flutter/foundation.dart';

/// Log levels for the application
enum LogLevel {
  verbose(0, 'VERBOSE'),
  debug(1, 'DEBUG'),
  info(2, 'INFO'),
  warning(3, 'WARNING'),
  error(4, 'ERROR');

  final int priority;
  final String label;

  const LogLevel(this.priority, this.label);
}

/// Log categories for better organization
enum LogCategory {
  general('General'),
  api('API'),
  navigation('Navigation'),
  lifecycle('Lifecycle'),
  database('Database'),
  network('Network'),
  ui('UI'),
  auth('Auth'),
  analytics('Analytics'),
  performance('Performance'),
  bloc('BLoC');

  final String label;
  const LogCategory(this.label);
}

/// Main Logger class for the application
class Logger {
  // Private constructor to prevent instantiation
  Logger._();

  /// Whether logging is enabled
  static bool _enableLogging = kDebugMode;

  /// Minimum log level to display
  static LogLevel _minimumLevel = LogLevel.verbose;

  /// Configure logger settings
  static void initialize({
    bool? enableLogging,
    LogLevel? minimumLevel,
  }) {
    if (enableLogging != null) _enableLogging = enableLogging;
    if (minimumLevel != null) _minimumLevel = minimumLevel;
  }

  /// Check if logging is enabled
  static bool get isEnabled => _enableLogging;

  /// Get current minimum level
  static LogLevel get minimumLevel => _minimumLevel;

  /// Verbose level logging - most detailed
  static void verbose(
    String message, {
    LogCategory category = LogCategory.general,
    Object? error,
    StackTrace? stackTrace,
  }) {
    _log(
      level: LogLevel.verbose,
      message: message,
      category: category,
      error: error,
      stackTrace: stackTrace,
    );
  }

  /// Debug level logging - general debugging info
  static void debug(
    String message, {
    LogCategory category = LogCategory.general,
    Object? error,
    StackTrace? stackTrace,
  }) {
    _log(
      level: LogLevel.debug,
      message: message,
      category: category,
      error: error,
      stackTrace: stackTrace,
    );
  }

  /// Info level logging - important information
  static void info(
    String message, {
    LogCategory category = LogCategory.general,
    Object? error,
    StackTrace? stackTrace,
  }) {
    _log(
      level: LogLevel.info,
      message: message,
      category: category,
      error: error,
      stackTrace: stackTrace,
    );
  }

  /// Warning level logging - potential issues
  static void warning(
    String message, {
    LogCategory category = LogCategory.general,
    Object? error,
    StackTrace? stackTrace,
  }) {
    _log(
      level: LogLevel.warning,
      message: message,
      category: category,
      error: error,
      stackTrace: stackTrace,
    );
  }

  /// Error level logging - actual errors
  static void error(
    String message, {
    LogCategory category = LogCategory.general,
    Object? error,
    StackTrace? stackTrace,
  }) {
    _log(
      level: LogLevel.error,
      message: message,
      category: category,
      error: error,
      stackTrace: stackTrace,
    );
  }

  /// Core logging implementation
  static void _log({
    required LogLevel level,
    required String message,
    required LogCategory category,
    Object? error,
    StackTrace? stackTrace,
  }) {
    // Check if logging is enabled
    if (!_enableLogging) return;

    // Check if log level is high enough
    if (level.priority < _minimumLevel.priority) return;

    // Format timestamp (HH:mm:ss.SSS)
    final now = DateTime.now();
    final timestamp = '${_twoDigits(now.hour)}:${_twoDigits(now.minute)}:'
        '${_twoDigits(now.second)}';

    // Build log message
    final logMessage = '$timestamp $message';

    // Log to developer console (for DevTools)
    developer.log(
      logMessage,
      name: category.label,
      time: now,
      level: level.priority * 300,
      error: error,
      stackTrace: stackTrace,
    );
  }
  /// Helper methods for formatting
  static String _twoDigits(int n) => n.toString().padLeft(2, '0');

  // ═══════════════════════════════════════════════════════════════
  // CONVENIENCE METHODS
  // ═══════════════════════════════════════════════════════════════

  /// Log API request
  static void apiRequest({
    required String endpoint,
    String method = 'GET',
    Map<String, dynamic>? headers,
    dynamic body,
  }) {
    final buffer = StringBuffer('$method $endpoint');
    
    if (headers != null && headers.isNotEmpty) {
      buffer.write('\n  Headers: $headers');
    }
    
    if (body != null) {
      buffer.write('\n  Body: $body');
    }
    
    debug(buffer.toString(), category: LogCategory.api);
  }

  /// Log API response
  static void apiResponse({
    required String endpoint,
    required int statusCode,
    dynamic body,
    Duration? duration,
  }) {
    final buffer = StringBuffer('Response $statusCode from $endpoint');
    
    if (duration != null) {
      buffer.write(' (${duration.inMilliseconds}ms)');
    }
    
    if (body != null) {
      buffer.write('\n  Body: $body');
    }
    
    if (statusCode >= 200 && statusCode < 300) {
      debug(buffer.toString(), category: LogCategory.api);
    } else if (statusCode >= 400) {
      error(buffer.toString(), category: LogCategory.api);
    } else {
      warning(buffer.toString(), category: LogCategory.api);
    }
  }

  /// Log navigation event
  static void navigation({
    required String from,
    required String to,
    Map<String, dynamic>? arguments,
  }) {
    var message = 'Navigate: $from → $to';
    if (arguments != null && arguments.isNotEmpty) {
      message += '\n  Arguments: $arguments';
    }
    debug(message, category: LogCategory.navigation);
  }

  /// Log widget lifecycle event
  static void lifecycle({
    required String widget,
    required String event,
    Map<String, dynamic>? data,
  }) {
    var message = '$widget.$event()';
    if (data != null && data.isNotEmpty) {
      message += '\n  Data: $data';
    }
    verbose(message, category: LogCategory.lifecycle);
  }

  /// Log performance measurement
  static void performance({
    required String operation,
    required Duration duration,
    Map<String, dynamic>? details,
  }) {
    final ms = duration.inMilliseconds;
    final level = ms > 1000 ? LogLevel.warning : LogLevel.debug;
    
    var message = '$operation completed in ${ms}ms';
    if (details != null && details.isNotEmpty) {
      message += '\n  Details: $details';
    }
    
    _log(
      level: level,
      message: message,
      category: LogCategory.performance,
    );
  }

  /// Log database operation
  static void database({
    required String operation,
    String? table,
    Map<String, dynamic>? data,
  }) {
    var message = operation;
    if (table != null) message += ' on table: $table';
    if (data != null && data.isNotEmpty) {
      message += '\n  Data: $data';
    }
    debug(message, category: LogCategory.database);
  }
}
