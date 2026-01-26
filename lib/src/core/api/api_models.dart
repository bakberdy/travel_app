/// API response wrapper - hides Dio Response implementation
class ApiResponse<T> {
  final T? data;
  final int statusCode;
  final String? statusMessage;
  final Map<String, dynamic> headers;
  final ApiRequest? request;
  
  const ApiResponse({
    this.data,
    required this.statusCode,
    this.statusMessage,
    this.headers = const {},
    this.request,
  });

  bool get isSuccessful => statusCode >= 200 && statusCode < 300;
}

/// API request configuration
class ApiRequest {
  final String path;
  final String method;
  final Object? data;
  final Map<String, dynamic>? queryParameters;
  final Map<String, dynamic>? headers;
  final ApiOptions? options;

  const ApiRequest({
    required this.path,
    required this.method,
    this.data,
    this.queryParameters,
    this.headers,
    this.options,
  });
}

/// API options for customizing requests
class ApiOptions {
  final Map<String, dynamic>? headers;
  final String? contentType;
  final Duration? sendTimeout;
  final Duration? receiveTimeout;
  final Map<String, dynamic>? extra;
  final bool followRedirects;
  final int maxRedirects;

  const ApiOptions({
    this.headers,
    this.contentType,
    this.sendTimeout,
    this.receiveTimeout,
    this.extra,
    this.followRedirects = true,
    this.maxRedirects = 5,
  });
}

/// Progress callback for uploads/downloads
typedef ApiProgressCallback = void Function(int count, int total);

/// Request cancellation token
abstract class ApiCancelToken {
  void cancel([String? reason]);
  bool get isCancelled;
}
