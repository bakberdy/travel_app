import 'package:dio/dio.dart';
import '../storage/secure_storage/secure_storage.dart';
import '../monitoring/logger.dart';
import '../error/exceptions.dart';
import '../utils/constants/api_constants.dart';

/// Interceptor to handle authentication and token refresh
class AuthInterceptor extends Interceptor {
  final Dio dio;
  final SecureStorage storage;
  final void Function()? onUnauthorized;

  bool _isRefreshing = false;
  final List<Function> _requestsQueue = [];

  AuthInterceptor(
    this.dio,
    this.storage, {
    this.onUnauthorized,
  });

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    // Skip auth for public endpoints
    if (_isPublicEndpoint(options.path)) {
      return handler.next(options);
    }

    try {
      final accessToken = await storage.read(key: ApiConstants.accessTokenKey);

      if (accessToken != null) {
        options.headers[ApiConstants.authorizationHeader] =
            '${ApiConstants.bearerPrefix} $accessToken';
      }

      return handler.next(options);
    } catch (e) {
      Logger.error(
        'Failed to add auth token to request',
        category: LogCategory.api,
        error: e,
      );
      return handler.next(options);
    }
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    // Only handle 401 errors for authenticated endpoints
    if (err.response?.statusCode == 401) {
      final isRefreshEndpoint = err.requestOptions.path.contains('refresh');
      final isLoginEndpoint = err.requestOptions.path.contains('login');

      // If refresh token request fails, user is truly unauthorized
      if (isRefreshEndpoint) {
        await _handleUnauthorized();
        return handler.reject(
          DioException(
            requestOptions: err.requestOptions,
            error: const UnauthorizedException(
              'Session expired. Please login again.',
            ),
            response: err.response,
          ),
        );
      }

      // If login fails, it's invalid credentials, not unauthorized session
      if (isLoginEndpoint) {
        return handler.next(err);
      }

      // Try to refresh token for other endpoints
      if (!_isRefreshing) {
        _isRefreshing = true;

        try {
          final hasRefreshToken = await storage.containsKey(
            key: ApiConstants.refreshTokenKey,
          );

          if (!hasRefreshToken) {
            // No refresh token available, user is truly unauthorized
            await _handleUnauthorized();
            _isRefreshing = false;
            return handler.reject(
              DioException(
                requestOptions: err.requestOptions,
                error: const UnauthorizedException(
                  'Session expired. Please login again.',
                ),
                response: err.response,
              ),
            );
          }

          await _refreshToken();
          _isRefreshing = false;

          // Process queued requests
          for (var callback in _requestsQueue) {
            callback();
          }
          _requestsQueue.clear();

          // Retry the failed request
          final response = await _retry(err.requestOptions);
          return handler.resolve(response);
        } on DioException catch (refreshError) {
          _isRefreshing = false;
          _requestsQueue.clear();

          // Refresh failed, user is truly unauthorized
          await _handleUnauthorized();

          return handler.reject(
            DioException(
              requestOptions: err.requestOptions,
              error: const UnauthorizedException(
                'Session expired. Please login again.',
              ),
              response: refreshError.response,
            ),
          );
        } catch (e) {
          _isRefreshing = false;
          _requestsQueue.clear();

          // Unknown error during refresh
          await _handleUnauthorized();

          return handler.reject(
            DioException(
              requestOptions: err.requestOptions,
              error: const UnauthorizedException(
                'Authentication failed. Please login again.',
              ),
            ),
          );
        }
      } else {
        // Queue the request while refreshing
        await Future<void>(() async {
          _requestsQueue.add(() async {
            try {
              final response = await _retry(err.requestOptions);
              handler.resolve(response);
            } catch (e) {
              handler.reject(err);
            }
          });
        });
        return;
      }
    }

    return handler.next(err);
  }

  Future<void> _refreshToken() async {
    Logger.info('Refreshing access token', category: LogCategory.api);

    final refreshToken = await storage.read(key: ApiConstants.refreshTokenKey);

    if (refreshToken == null) {
      throw const UnauthorizedException('No refresh token available');
    }

    try {
      final response = await dio.post(
        ApiConstants.refresh,
        data: {'refresh_token': refreshToken},
        options: Options(
          headers: {
            ApiConstants.authorizationHeader:
                '${ApiConstants.bearerPrefix} $refreshToken',
          },
        ),
      );

      if (response.statusCode == 200 && response.data != null) {
        final newAccessToken = response.data['access_token'];
        final newRefreshToken = response.data['refresh_token'];

        if (newAccessToken == null) {
          throw const UnauthorizedException('Invalid refresh token response');
        }

        await storage.write(
          key: ApiConstants.accessTokenKey,
          value: newAccessToken,
        );

        if (newRefreshToken != null) {
          await storage.write(
            key: ApiConstants.refreshTokenKey,
            value: newRefreshToken,
          );
        }

        Logger.info('Access token refreshed successfully', category: LogCategory.api);
      } else {
        throw const UnauthorizedException('Token refresh failed');
      }
    } on DioException catch (e) {
      if (e.response?.statusCode == 401) {
        throw const UnauthorizedException('Refresh token expired');
      }
      rethrow;
    }
  }

  Future<Response> _retry(RequestOptions requestOptions) async {
    final accessToken = await storage.read(key: ApiConstants.accessTokenKey);

    if (accessToken == null) {
      throw const UnauthorizedException('No access token available');
    }

    final options = Options(
      method: requestOptions.method,
      headers: {
        ...requestOptions.headers,
        ApiConstants.authorizationHeader:
            '${ApiConstants.bearerPrefix} $accessToken',
      },
    );

    return dio.request(
      requestOptions.path,
      data: requestOptions.data,
      queryParameters: requestOptions.queryParameters,
      options: options,
    );
  }

  Future<void> _handleUnauthorized() async {
    Logger.warning('User unauthorized - clearing tokens', category: LogCategory.auth);
    await _clearTokens();
    onUnauthorized?.call();
  }

  Future<void> _clearTokens() async {
    await storage.delete(key: ApiConstants.accessTokenKey);
    await storage.delete(key: ApiConstants.refreshTokenKey);
    await storage.delete(key: ApiConstants.tokenExpiryKey);
  }

  bool _isPublicEndpoint(String path) {
    final publicEndpoints = [
      'login',
      'register',
      'refresh',
      'forgot-password',
      'reset-password',
    ];
    return publicEndpoints.any((endpoint) => path.contains(endpoint));
  }
}
