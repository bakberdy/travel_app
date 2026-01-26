class AppConfig {
  final bool enableLogging;
  final bool enableAnalytics;
  final bool enableCrashlytics;
  final String baseUrl;
  final Duration connectTimeout;
  final Duration receiveTimeout;
  final Duration sendTimeout;

  AppConfig({
    required this.baseUrl,
    required this.enableLogging,
    required this.enableAnalytics,
    required this.enableCrashlytics,
    this.connectTimeout = const Duration(seconds: 30),
    this.receiveTimeout = const Duration(seconds: 30),
    this.sendTimeout = const Duration(seconds: 30),
  });

  static AppConfig? _instance;
  static AppConfig get instance => _instance!;

  static void initialize() {
    _instance = AppConfig(
      baseUrl: 'http://3.79.185.15:5200',
      enableLogging: true,
      enableAnalytics: true,
      enableCrashlytics: false,
    );
  }
}
