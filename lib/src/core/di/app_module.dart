import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:travel_app/src/config/router/app_router.dart';

@module
abstract class AppModule {
  @lazySingleton
  AppRouter get appRouter => AppRouter();

  @preResolve
  @lazySingleton
  Future<SharedPreferences> get sharedPreferences async =>
      await SharedPreferences.getInstance();

  @lazySingleton
  FlutterSecureStorage get secureStorage => FlutterSecureStorage();
}
