enum Environment { development, staging, production }

class AppConfig {
  final Environment environment;
  final bool enableLogging;
  final bool enableAnalytics;
  final bool enableCrashlytics;
  final String baseUrl;
  final Duration connectTimeout;
  final Duration receiveTimeout;
  final Duration sendTimeout;

  AppConfig({
    required this.baseUrl,
    required this.environment,
    required this.enableLogging,
    required this.enableAnalytics,
    required this.enableCrashlytics,
    this.connectTimeout = const Duration(seconds: 30),
    this.receiveTimeout = const Duration(seconds: 30),
    this.sendTimeout = const Duration(seconds: 30),
  });

  static AppConfig? _instance;
  static AppConfig get instance => _instance!;

  static void initialize({Environment? env, String? envString}) {
    final envFromString = switch (envString) {
      'staging' => Environment.staging,
      'production' => Environment.production,
      'development' => Environment.development,
      _=>null
    };

    env ??= envFromString ?? Environment.development;

    switch (env) {
      case Environment.development:
        _instance = AppConfig(
          baseUrl: 'https://dev.api.example.com/v1/',
          environment: env,
          enableLogging: true,
          enableAnalytics: false,
          enableCrashlytics: true,
        );
        break;
      case Environment.staging:
        _instance = AppConfig(
          baseUrl: 'https://staging.api.example.com/v1/',
          environment: env,
          enableLogging: true,
          enableAnalytics: true,
          enableCrashlytics: false,
        );
        break;
      case Environment.production:
        _instance = AppConfig(
          baseUrl: 'https://api.example.com/v1/',
          environment: env,
          enableLogging: false,
          enableAnalytics: true,
          enableCrashlytics: false,
        );
        break;
    }
  }
}
