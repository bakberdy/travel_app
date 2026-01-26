/// Base exception for all app exceptions
abstract class AppException implements Exception {
  final String message;
  final int? code;

  const AppException(this.message, [this.code]);

  @override
  String toString() => message;
}

// ============ Network Exceptions ============

class ServerException extends AppException {
  const ServerException(super.message, [super.code]);
}

class NetworkException extends AppException {
  const NetworkException([super.message = 'No internet connection']);
}

class TimeoutException extends AppException {
  const TimeoutException([super.message = 'Request timed out']);
}

// ============ Auth Exceptions ============

class UnauthorizedException extends AppException {
  const UnauthorizedException([super.message = 'Unauthorized', super.code = 401]);
}

// ============ Cache Exceptions ============

class CacheException extends AppException {
  const CacheException([super.message = 'Cache error']);
}

// ============ Validation Exceptions ============

class ValidationException extends AppException {
  const ValidationException(super.message);
}


/// Additional exception types for API client
class CancelledException extends AppException {
  const CancelledException([super.message = 'Request cancelled']);
}

class BadRequestException extends AppException {
  const BadRequestException([super.message = 'Bad request', super.code = 400]);
}

class ForbiddenException extends AppException {
  const ForbiddenException([super.message = 'Access forbidden', super.code = 403]);
}

class NotFoundException extends AppException {
  const NotFoundException([super.message = 'Resource not found', super.code = 404]);
}

class ApiValidationException extends AppException {
  final Map<String, dynamic>? errors;

  const ApiValidationException(super.message, [this.errors, super.code = 422]);

  String? getFieldError(String fieldName) => errors?[fieldName];
}

class TooManyRequestsException extends AppException {
  const TooManyRequestsException([super.message = 'Too many requests', super.code = 429]);
}

