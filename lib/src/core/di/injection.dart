import 'package:get_it/get_it.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:travel_app/app_config.dart';
import 'package:travel_app/src/core/monitoring/analytics/analytics.dart';
import 'package:travel_app/src/core/monitoring/analytics/providers/console_analytics_provider.dart';
import 'package:travel_app/src/core/monitoring/crashlytics/crashlytics.dart';
import 'package:travel_app/src/core/monitoring/crashlytics/providers/console_crash_provider.dart';
import 'package:travel_app/src/core/monitoring/logger.dart';
import 'package:travel_app/src/core/monitoring/observers/logger_bloc_observer.dart';
import 'injection.config.dart';

final sl = GetIt.instance;

@InjectableInit()
Future<void> configureDependencies() async {
  const env = String.fromEnvironment("ENV", defaultValue: 'development');

  final directory = await getApplicationDocumentsDirectory();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: HydratedStorageDirectory(directory.path),
  );
  AppConfig.initialize(envString: env);
  Logger.initialize(enableLogging: AppConfig.instance.enableLogging);
  Crashlytics.initialize([
    ConsoleCrashProvider(),
  ], enableCrashlytics: AppConfig.instance.enableCrashlytics);
  Analytics.initialize([
    ConsoleAnalyticsProvider(),
  ], enableAnalytics: AppConfig.instance.enableAnalytics);
  Bloc.observer = LoggerBlocObserver();

  await sl.init();
}
