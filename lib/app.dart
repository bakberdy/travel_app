import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/src/config/router/app_router.dart';
import 'package:travel_app/src/config/theme/app_theme.dart';
import 'package:travel_app/src/core/di/injection.dart';
import 'package:travel_app/src/core/language/generated/app_localizations.dart';
import 'package:travel_app/src/core/monitoring/observers/analytics_page_observer.dart';
import 'package:travel_app/src/core/monitoring/observers/logger_page_observer.dart';
import 'package:travel_app/src/shared/presentation/bloc/locale_cubit/locale_cubit.dart';
import 'package:travel_app/src/shared/presentation/bloc/theme_cubit/theme_cubit.dart';
import 'src/core/utils/constants/locale_constants.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => ThemeCubit()),
        BlocProvider(create: (_) => LocaleCubit()),
      ],
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, themeState) {
          return BlocBuilder<LocaleCubit, LocaleState>(
            builder: (context, localeState) {
              return MaterialApp.router(
                debugShowCheckedModeBanner: false,

                // Router configuration
                routerConfig: sl<AppRouter>().config(
                  navigatorObservers: () => [
                    AnalyticsPageObserver(),
                    LoggerPageObserver(),
                  ],
                ),

                // Theme configuration
                theme: AppTheme.lightTheme,
                themeMode: themeState.themeMode,

                // Localization configuration
                locale: localeState.locale,
                localizationsDelegates: const [
                  AppLocalizations.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                supportedLocales: LocaleConstants.supportedLocales,
                localeResolutionCallback: (deviceLocale, supportedLocales) {
                  for (var locale in supportedLocales) {
                    if (locale.languageCode == deviceLocale?.languageCode) {
                      return locale;
                    }
                  }
                  return LocaleConstants.defaultLocale;
                },
              );
            },
          );
        },
      ),
    );
  }
}
