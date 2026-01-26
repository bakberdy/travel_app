/// Centralized failure codes for localization lookup
class FailureCode {
  // Network Failures (1xxx)
  static const String serverError = 'failure_1000';
  static const String networkError = 'failure_1001';
  static const String timeoutError = 'failure_1002';
  static const String unauthorizedError = 'failure_1003';
  static const String notFoundError = 'failure_1004';
  static const String forbiddenError = 'failure_1005';
  
  // Cache/Storage Failures (2xxx)
  static const String cacheError = 'failure_2000';
  static const String storageError = 'failure_2001';
  
  // Validation Failures (3xxx)
  static const String validationError = 'failure_3000';
  static const String emailInvalid = 'failure_3001';
  static const String passwordTooShort = 'failure_3002';
  static const String passwordTooWeak = 'failure_3003';
  static const String requiredField = 'failure_3004';
  
  // Business Logic Failures (4xxx)
  static const String businessLogicError = 'failure_4000';
  static const String permissionDenied = 'failure_4001';
  static const String resourceConflict = 'failure_4002';
  static const String accountDisabled = 'failure_4003';
  static const String emailAlreadyExists = 'failure_4004';
  
  // General Failures (5xxx)
  static const String unexpectedError = 'failure_5000';
  static const String operationCancelled = 'failure_5001';
}