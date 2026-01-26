/// Main API exports - features should import from here
/// This file hides the Dio implementation details
library;

export 'api_client.dart';
export 'api_models.dart';

// Do NOT export dio_adapter.dart - it's internal implementation
// Do NOT export dio_logger_interceptor.dart - internal
// Do NOT export auth_interceptor.dart - internal
