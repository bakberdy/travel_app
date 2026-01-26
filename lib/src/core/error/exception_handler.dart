import 'package:dio/dio.dart';
import 'exceptions.dart';
import 'failures.dart';

/// Converts exceptions to failures
class ExceptionHandler {
  static Failure handle(Exception e) {
    if (e is ServerException) {
      return ServerFailure(
        message: e.message,
        statusCode: e.code,
      );
    }
    
    if (e is NetworkException) {
      return NetworkFailure(message: e.message);
    }
    
    if (e is TimeoutException) {
      return TimeoutFailure(message: e.message);
    }
    
    if (e is UnauthorizedException) {
      return UnauthorizedFailure(message: e.message);
    }
    
    if (e is CacheException) {
      return CacheFailure(message: e.message);
    }
    
    if (e is ValidationException) {
      return ValidationFailure(message: e.message);
    }
    
    return UnexpectedFailure(message: e.toString());
  }

  /// Convert any error to a typed AppException (for API client)
  static AppException handleError(dynamic error) {
    if (error is AppException) {
      return error;
    }

    if (error is DioException) {
      return _handleDioException(error);
    }

    return ServerException(error.toString());
  }

  /// Handle Dio-specific exceptions
  static AppException _handleDioException(DioException error) {
    switch (error.type) {
      case DioExceptionType.cancel:
        return const CancelledException();

      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return const TimeoutException();

      case DioExceptionType.connectionError:
        return const NetworkException();

      case DioExceptionType.badResponse:
        return _handleResponseError(error);

      case DioExceptionType.badCertificate:
        return const ServerException('SSL certificate verification failed');

      case DioExceptionType.unknown:
        if (error.message?.contains('SocketException') ?? false) {
          return const NetworkException();
        }
        return ServerException(
          error.message ?? 'Unknown error occurred',
        );
    }
  }

  /// Handle HTTP response errors based on status code
  static AppException _handleResponseError(DioException error) {
    final statusCode = error.response?.statusCode;
    final responseData = error.response?.data;

    String message = 'An error occurred';
    if (responseData is Map && responseData.containsKey('message')) {
      message = responseData['message'];
    } else if (responseData is String) {
      message = responseData;
    }

    switch (statusCode) {
      case 400:
        return BadRequestException(message);

      case 401:
        // Only return UnauthorizedException if it's from our interceptor
        if (error.error is UnauthorizedException) {
          return error.error as UnauthorizedException;
        }
        return BadRequestException('Invalid credentials');

      case 403:
        return ForbiddenException(message);

      case 404:
        return NotFoundException(message);

      case 422:
        Map<String, dynamic>? errors;
        if (responseData is Map && responseData.containsKey('errors')) {
          errors = Map<String, dynamic>.from(responseData['errors']);
        }
        return ApiValidationException(message, errors);

      case 429:
        return TooManyRequestsException(message);

      case 500:
      case 502:
      case 503:
      case 504:
        return ServerException(message, statusCode);

      default:
        return ServerException(message, statusCode);
    }
  }
}
