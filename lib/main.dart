import 'package:flutter/material.dart';
import 'package:travel_app/app.dart';
import 'package:travel_app/app_config.dart';
import 'package:travel_app/src/core/di/injection.dart';
import 'package:travel_app/src/core/monitoring/analytics/analytics.dart';
import 'package:travel_app/src/core/monitoring/analytics/analytics_events.dart';
import 'package:travel_app/src/core/monitoring/logger.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();

  Analytics.track(AnalyticsEvent(name: AnalyticsEventName.appStarted));
  Logger.info(
    'App started in ${AppConfig.instance.environment.name} environment',
  );

  runApp(const App());
}
