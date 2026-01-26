// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;
import 'package:travel_app/src/config/router/app_router.dart' as _i433;
import 'package:travel_app/src/core/api/api_client.dart' as _i401;
import 'package:travel_app/src/core/di/app_module.dart' as _i691;
import 'package:travel_app/src/core/monitoring/observers/analytics_page_observer.dart'
    as _i1002;
import 'package:travel_app/src/core/monitoring/observers/logger_page_observer.dart'
    as _i908;
import 'package:travel_app/src/core/storage/local_storage/local_storage.dart'
    as _i486;
import 'package:travel_app/src/core/storage/local_storage/shared_preferences_storage.dart'
    as _i968;
import 'package:travel_app/src/core/storage/secure_storage/flutter_secure_storage_impl.dart'
    as _i349;
import 'package:travel_app/src/core/storage/secure_storage/secure_storage.dart'
    as _i412;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final appModule = _$AppModule();
    gh.lazySingleton<_i433.AppRouter>(() => appModule.appRouter);
    await gh.lazySingletonAsync<_i460.SharedPreferences>(
      () => appModule.sharedPreferences,
      preResolve: true,
    );
    gh.lazySingleton<_i558.FlutterSecureStorage>(() => appModule.secureStorage);
    gh.lazySingleton<_i1002.AnalyticsPageObserver>(
      () => _i1002.AnalyticsPageObserver(),
    );
    gh.lazySingleton<_i908.LoggerPageObserver>(
      () => _i908.LoggerPageObserver(),
    );
    gh.lazySingleton<_i412.SecureStorage>(
      () => _i349.FlutterSecureStorageImpl(gh<_i558.FlutterSecureStorage>()),
    );
    gh.lazySingleton<_i486.LocalStorage>(
      () => _i968.SharedPreferencesStorage(
        sharedPreferences: gh<_i460.SharedPreferences>(),
      ),
    );
    gh.lazySingleton<_i401.ApiClient>(
      () => _i401.ApiClient(gh<_i412.SecureStorage>()),
    );
    return this;
  }
}

class _$AppModule extends _i691.AppModule {}
