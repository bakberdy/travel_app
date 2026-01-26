import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:travel_app/app.dart';
import 'package:travel_app/app_config.dart';
import 'package:travel_app/src/core/di/injection.dart';
import 'package:travel_app/src/core/monitoring/logger.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final directory = await getApplicationDocumentsDirectory();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: HydratedStorageDirectory(directory.path),
  );
  AppConfig.initialize();
  Logger.initialize(enableLogging: AppConfig.instance.enableLogging);

  await configureDependencies();

  Logger.info('App started');

  runApp(const App());
}
