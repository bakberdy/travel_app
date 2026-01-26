import 'package:dio/dio.dart';
import 'api_models.dart';

/// Converts Dio types to API models and vice versa
class DioAdapter {
  /// Convert Dio Response to ApiResponse
  static ApiResponse<T> fromDioResponse<T>(Response<T> response) {
    return ApiResponse<T>(
      data: response.data,
      statusCode: response.statusCode ?? 0,
      statusMessage: response.statusMessage,
      headers: response.headers.map,
      request: ApiRequest(
        path: response.requestOptions.path,
        method: response.requestOptions.method,
        data: response.requestOptions.data,
        queryParameters: response.requestOptions.queryParameters,
        headers: response.requestOptions.headers,
      ),
    );
  }

  /// Convert ApiOptions to Dio Options
  static Options? toDioOptions(ApiOptions? options) {
    if (options == null) return null;

    return Options(
      headers: options.headers,
      contentType: options.contentType,
      sendTimeout: options.sendTimeout,
      receiveTimeout: options.receiveTimeout,
      extra: options.extra,
      followRedirects: options.followRedirects,
      maxRedirects: options.maxRedirects,
    );
  }

  /// Create ApiCancelToken from Dio CancelToken
  static ApiCancelToken fromDioCancelToken(CancelToken token) {
    return _DioApiCancelToken(token);
  }

  /// Create Dio CancelToken from ApiCancelToken
  static CancelToken? toDioCancelToken(ApiCancelToken? token) {
    if (token == null) return null;
    if (token is _DioApiCancelToken) return token._token;
    return null;
  }
}

/// Internal implementation of ApiCancelToken using Dio's CancelToken
class _DioApiCancelToken implements ApiCancelToken {
  final CancelToken _token;

  _DioApiCancelToken(this._token);

  @override
  void cancel([String? reason]) => _token.cancel(reason);

  @override
  bool get isCancelled => _token.isCancelled;
}
