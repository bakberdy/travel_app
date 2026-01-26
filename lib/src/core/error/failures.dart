import 'package:equatable/equatable.dart';
import 'failure_codes.dart';

/// Base failure class with localization support
abstract class Failure extends Equatable {
  /// Localization key for the failure message
  final String code;
  
  /// Default message (fallback if localization fails)
  final String message;
  
  /// HTTP status code or custom error code
  final int? statusCode;
  
  /// Additional details for context
  final Map<String, dynamic>? details;
  
  /// Parameters for message interpolation
  final Map<String, String>? messageParams;

  const Failure({
    required this.code,
    required this.message,
    this.statusCode,
    this.details,
    this.messageParams,
  });

  @override
  List<Object?> get props => [code, message, statusCode, details, messageParams];

  @override
  String toString() => 'Failure(code: $code, message: $message, statusCode: $statusCode)';
}

// ============ Network Related Failures ============

class ServerFailure extends Failure {
  const ServerFailure({
    super.code = FailureCode.serverError,
    super.message = 'Server error occurred',
    super.statusCode,
    super.details,
    super.messageParams,
  });

  factory ServerFailure.fromStatusCode(int statusCode, {String? serverMessage}) {
    return ServerFailure(
      statusCode: statusCode,
      message: serverMessage ?? 'Server error occurred',
      messageParams: serverMessage != null ? {'message': serverMessage} : null,
    );
  }
}

class NetworkFailure extends Failure {
  const NetworkFailure({
    super.code = FailureCode.networkError,
    super.message = 'No internet connection',
    super.statusCode,
  });
}

class TimeoutFailure extends Failure {
  const TimeoutFailure({
    super.code = FailureCode.timeoutError,
    super.message = 'Request timed out',
    super.statusCode,
  });
}

class UnauthorizedFailure extends Failure {
  const UnauthorizedFailure({
    super.code = FailureCode.unauthorizedError,
    super.message = 'Unauthorized access',
    super.statusCode = 401,
  });
}

class NotFoundFailure extends Failure {
  const NotFoundFailure({
    super.code = FailureCode.notFoundError,
    super.message = 'Resource not found',
    super.statusCode = 404,
    super.messageParams,
  });

  factory NotFoundFailure.withResource(String resourceName) {
    return NotFoundFailure(
      messageParams: {'resource': resourceName},
    );
  }
}

class PermissionFailure extends Failure {
  const PermissionFailure({
    super.code = FailureCode.permissionDenied,
    super.message = 'Permission denied',
    super.statusCode = 403,
  });
}

// ============ Cache/Storage Related Failures ============

class CacheFailure extends Failure {
  const CacheFailure({
    super.code = FailureCode.cacheError,
    super.message = 'Cache operation failed',
    super.statusCode,
  });
}

class StorageFailure extends Failure {
  const StorageFailure({
    super.code = FailureCode.storageError,
    super.message = 'Storage operation failed',
    super.statusCode,
  });
}

// ============ Validation Related Failures ============

class ValidationFailure extends Failure {
  final Map<String, String>? fieldErrors;

  const ValidationFailure({
    super.code = FailureCode.validationError,
    super.message = 'Validation failed',
    this.fieldErrors,
    super.statusCode,
    super.messageParams,
  }) : super(details: fieldErrors);

  factory ValidationFailure.fromFields(Map<String, String> errors) {
    return ValidationFailure(
      fieldErrors: errors,
    );
  }

  factory ValidationFailure.requiredField(String fieldName) {
    return ValidationFailure(
      code: FailureCode.requiredField,
      message: 'Field is required',
      messageParams: {'field': fieldName},
    );
  }

  factory ValidationFailure.emailInvalid() {
    return const ValidationFailure(
      code: FailureCode.emailInvalid,
      message: 'Email is invalid',
    );
  }

  factory ValidationFailure.passwordTooShort({required int minLength}) {
    return ValidationFailure(
      code: FailureCode.passwordTooShort,
      message: 'Password is too short',
      messageParams: {'minLength': minLength.toString()},
    );
  }

  String? getFieldError(String fieldName) => fieldErrors?[fieldName];
}

// ============ Business Logic Failures ============

class BusinessLogicFailure extends Failure {
  const BusinessLogicFailure({
    super.code = FailureCode.businessLogicError,
    required super.message,
    super.statusCode,
    super.details,
    super.messageParams,
  });

  factory BusinessLogicFailure.emailAlreadyExists() {
    return const BusinessLogicFailure(
      code: FailureCode.emailAlreadyExists,
      message: 'Email already exists',
    );
  }

  factory BusinessLogicFailure.accountDisabled() {
    return const BusinessLogicFailure(
      code: FailureCode.accountDisabled,
      message: 'Account is disabled',
    );
  }
}

class ConflictFailure extends Failure {
  const ConflictFailure({
    super.code = FailureCode.resourceConflict,
    required super.message,
    super.statusCode = 409,
    super.messageParams,
  });
}

// ============ General Failures ============

class UnexpectedFailure extends Failure {
  const UnexpectedFailure({
    super.code = FailureCode.unexpectedError,
    super.message = 'An unexpected error occurred',
    super.statusCode,
    super.details,
  });
}

class CancelledFailure extends Failure {
  const CancelledFailure({
    super.code = FailureCode.operationCancelled,
    super.message = 'Operation cancelled',
  });
}