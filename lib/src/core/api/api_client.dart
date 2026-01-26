import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:travel_app/app_config.dart';
import '../storage/secure_storage/secure_storage.dart';
import '../monitoring/logger.dart';
import '../utils/constants/api_constants.dart';
import '../error/exception_handler.dart';
import 'api_models.dart';
import 'dio_adapter.dart';
import 'auth_interceptor.dart';
import 'dio_logger_interceptor.dart';

/// Main API client for the application
/// Handles all HTTP requests with authentication, logging, and error handling
@lazySingleton
class ApiClient {
  late final Dio _dio;
  final SecureStorage _storage;
  void Function()? _onUnauthorized;

  ApiClient(
    this._storage) {
    _dio = Dio(
      BaseOptions(
        baseUrl: AppConfig.instance.baseUrl,
        connectTimeout: AppConfig.instance.connectTimeout,
        receiveTimeout: AppConfig.instance.receiveTimeout,
        sendTimeout: AppConfig.instance.sendTimeout,
        headers: {
          ApiConstants.contentTypeHeader: ApiConstants.contentTypeJson,
          ApiConstants.acceptHeader: ApiConstants.contentTypeJson,
        },
      ),
    );

    // Add interceptors in order
    _dio.interceptors.addAll([
      AuthInterceptor(
        _dio,
        _storage,
        onUnauthorized: () => _onUnauthorized?.call(),
      ),
      DioLoggerInterceptor(
        logRequest: true,
        logRequestHeader: true,
        logRequestBody: true,
        logResponse: true,
        logResponseHeader: false,
        logResponseBody: true,
        logError: true,
      ),
    ]);

    Logger.info(
      'ApiClient initialized with baseUrl: ${AppConfig.instance.baseUrl}',
      category: LogCategory.api,
    );
  }

  /// Set callback for unauthorized events
  void setOnUnauthorized(void Function() callback) {
    _onUnauthorized = callback;
  }

  // ═══════════════════════════════════════════════════════════════
  // HTTP METHODS
  // ═══════════════════════════════════════════════════════════════

  /// Error handling wrapper for all HTTP requests
  Future<ApiResponse<T>> _handleRequest<T>(
    Future<Response<T>> Function() request,
  ) async {
    try {
      final response = await request();
      return DioAdapter.fromDioResponse(response);
    } on DioException catch (e) {
      Logger.error(
        'DioException caught: ${e.type}',
        error: e,
        category: LogCategory.api,
      );
      throw ExceptionHandler.handleError(e);
    } catch (e) {
      Logger.error(
        'Unexpected error in API request',
        error: e,
        category: LogCategory.api,
      );
      throw ExceptionHandler.handleError(e);
    }
  }

  /// GET request
  Future<ApiResponse<T>> get<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    ApiOptions? options,
    ApiCancelToken? cancelToken,
    ApiProgressCallback? onReceiveProgress,
  }) {
    return _handleRequest<T>(
      () => _dio.get<T>(
        path,
        data: data,
        queryParameters: queryParameters,
        options: DioAdapter.toDioOptions(options),
        cancelToken: DioAdapter.toDioCancelToken(cancelToken),
        onReceiveProgress: onReceiveProgress,
      ),
    );
  }

  /// POST request
  Future<ApiResponse<T>> post<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    ApiOptions? options,
    ApiCancelToken? cancelToken,
    ApiProgressCallback? onSendProgress,
    ApiProgressCallback? onReceiveProgress,
  }) {
    return _handleRequest<T>(
      () => _dio.post<T>(
        path,
        data: data,
        queryParameters: queryParameters,
        options: DioAdapter.toDioOptions(options),
        cancelToken: DioAdapter.toDioCancelToken(cancelToken),
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      ),
    );
  }

  /// PUT request
  Future<ApiResponse<T>> put<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    ApiOptions? options,
    ApiCancelToken? cancelToken,
    ApiProgressCallback? onSendProgress,
    ApiProgressCallback? onReceiveProgress,
  }) {
    return _handleRequest<T>(
      () => _dio.put<T>(
        path,
        data: data,
        queryParameters: queryParameters,
        options: DioAdapter.toDioOptions(options),
        cancelToken: DioAdapter.toDioCancelToken(cancelToken),
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      ),
    );
  }

  /// PATCH request
  Future<ApiResponse<T>> patch<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    ApiOptions? options,
    ApiCancelToken? cancelToken,
    ApiProgressCallback? onSendProgress,
    ApiProgressCallback? onReceiveProgress,
  }) {
    return _handleRequest<T>(
      () => _dio.patch<T>(
        path,
        data: data,
        queryParameters: queryParameters,
        options: DioAdapter.toDioOptions(options),
        cancelToken: DioAdapter.toDioCancelToken(cancelToken),
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      ),
    );
  }

  /// DELETE request
  Future<ApiResponse<T>> delete<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    ApiOptions? options,
    ApiCancelToken? cancelToken,
  }) {
    return _handleRequest<T>(
      () => _dio.delete<T>(
        path,
        data: data,
        queryParameters: queryParameters,
        options: DioAdapter.toDioOptions(options),
        cancelToken: DioAdapter.toDioCancelToken(cancelToken),
      ),
    );
  }

  /// HEAD request
  Future<ApiResponse<T>> head<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    ApiOptions? options,
    ApiCancelToken? cancelToken,
  }) {
    return _handleRequest<T>(
      () => _dio.head<T>(
        path,
        data: data,
        queryParameters: queryParameters,
        options: DioAdapter.toDioOptions(options),
        cancelToken: DioAdapter.toDioCancelToken(cancelToken),
      ),
    );
  }

  /// Download file
  Future<ApiResponse> download(
    String urlPath,
    dynamic savePath, {
    ApiProgressCallback? onReceiveProgress,
    Map<String, dynamic>? queryParameters,
    ApiCancelToken? cancelToken,
    bool deleteOnError = true,
    Object? data,
    ApiOptions? options,
  }) async {
    try {
      final response = await _dio.download(
        urlPath,
        savePath,
        onReceiveProgress: onReceiveProgress,
        queryParameters: queryParameters,
        cancelToken: DioAdapter.toDioCancelToken(cancelToken),
        deleteOnError: deleteOnError,
        data: data,
        options: DioAdapter.toDioOptions(options),
      );
      return DioAdapter.fromDioResponse(response);
    } on DioException catch (e) {
      Logger.error(
        'DioException in download: ${e.type}',
        error: e,
        category: LogCategory.api,
      );
      throw ExceptionHandler.handleError(e);
    } catch (e) {
      Logger.error(
        'Unexpected error in download',
        error: e,
        category: LogCategory.api,
      );
      throw ExceptionHandler.handleError(e);
    }
  }
  // ═══════════════════════════════════════════════════════════════
  // TOKEN MANAGEMENT
  // ═══════════════════════════════════════════════════════════════

  /// Save authentication tokens
  Future<void> saveTokens(String accessToken, String refreshToken) async {
    await _storage.write(
      key: ApiConstants.accessTokenKey,
      value: accessToken,
    );
    await _storage.write(
      key: ApiConstants.refreshTokenKey,
      value: refreshToken,
    );

    Logger.info('Tokens saved successfully', category: LogCategory.auth);
  }

  /// Get access token
  Future<String?> getAccessToken() async {
    return await _storage.read(key: ApiConstants.accessTokenKey);
  }

  /// Get refresh token
  Future<String?> getRefreshToken() async {
    return await _storage.read(key: ApiConstants.refreshTokenKey);
  }

  /// Clear all tokens
  Future<void> clearTokens() async {
    await _storage.delete(key: ApiConstants.accessTokenKey);
    await _storage.delete(key: ApiConstants.refreshTokenKey);
    await _storage.delete(key: ApiConstants.tokenExpiryKey);

    Logger.info('Tokens cleared', category: LogCategory.auth);
  }

  /// Check if user is authenticated
  Future<bool> isAuthenticated() async {
    final token = await getAccessToken();
    return token != null && token.isNotEmpty;
  }
}
