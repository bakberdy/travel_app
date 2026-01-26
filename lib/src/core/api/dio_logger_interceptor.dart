import 'package:dio/dio.dart';
import '../monitoring/logger.dart';

/// Custom Dio interceptor that uses the app's Logger
class DioLoggerInterceptor extends Interceptor {
  final bool logRequest;
  final bool logRequestHeader;
  final bool logRequestBody;
  final bool logResponse;
  final bool logResponseHeader;
  final bool logResponseBody;
  final bool logError;

  DioLoggerInterceptor({
    this.logRequest = true,
    this.logRequestHeader = true,
    this.logRequestBody = true,
    this.logResponse = true,
    this.logResponseHeader = false,
    this.logResponseBody = true,
    this.logError = true,
  });

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (logRequest) {
      final buffer = StringBuffer();
      buffer.write('${options.method} ${options.uri}');

      if (logRequestHeader && options.headers.isNotEmpty) {
        buffer.write('\n  Headers:');
        options.headers.forEach((key, value) {
          // Mask sensitive headers
          if (_isSensitiveHeader(key)) {
            buffer.write('\n    $key: ***');
          } else {
            buffer.write('\n    $key: $value');
          }
        });
      }

      if (logRequestBody && options.data != null) {
        buffer.write('\n  Body: ${_formatData(options.data)}');
      }

      if (options.queryParameters.isNotEmpty) {
        buffer.write('\n  Query: ${options.queryParameters}');
      }

      Logger.debug(buffer.toString(), category: LogCategory.api);
    }

    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (logResponse) {
      final buffer = StringBuffer();
      buffer.write(
        'Response ${response.statusCode} from ${response.requestOptions.method} ${response.requestOptions.uri}',
      );

      if (logResponseHeader && response.headers.map.isNotEmpty) {
        buffer.write('\n  Headers:');
        response.headers.map.forEach((key, values) {
          buffer.write('\n    $key: ${values.join(', ')}');
        });
      }

      if (logResponseBody && response.data != null) {
        buffer.write('\n  Body: ${_formatData(response.data)}');
      }

      final statusCode = response.statusCode ?? 0;
      if (statusCode >= 200 && statusCode < 300) {
        Logger.debug(buffer.toString(), category: LogCategory.api);
      } else if (statusCode >= 400) {
        Logger.error(buffer.toString(), category: LogCategory.api);
      } else {
        Logger.warning(buffer.toString(), category: LogCategory.api);
      }
    }

    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (logError) {
      final buffer = StringBuffer();
      buffer.write(
        'Error ${err.response?.statusCode ?? 'Unknown'} on ${err.requestOptions.method} ${err.requestOptions.uri}',
      );

      if (err.type != DioExceptionType.unknown) {
        buffer.write('\n  Type: ${err.type}');
      }

      if (err.message != null) {
        buffer.write('\n  Message: ${err.message}');
      }

      if (err.response?.data != null) {
        buffer.write('\n  Response: ${_formatData(err.response!.data)}');
      }

      Logger.error(
        buffer.toString(),
        category: LogCategory.api,
        error: err,
        stackTrace: err.stackTrace,
      );
    }

    super.onError(err, handler);
  }

  /// Check if header contains sensitive information
  bool _isSensitiveHeader(String key) {
    final lowerKey = key.toLowerCase();
    return lowerKey.contains('authorization') ||
        lowerKey.contains('token') ||
        lowerKey.contains('key') ||
        lowerKey.contains('secret');
  }

  /// Format data for logging (with size limit)
  String _formatData(dynamic data) {
    if (data == null) return 'null';

    final str = data.toString();
    if (str.length > 500) {
      return '${str.substring(0, 500)}... (${str.length} chars total)';
    }
    return str;
  }
}
