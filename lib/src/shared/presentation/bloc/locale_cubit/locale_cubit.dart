import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:travel_app/src/core/utils/constants/locale_constants.dart';

part 'locale_state.dart';

class LocaleCubit extends HydratedCubit<LocaleState> {
  LocaleCubit() : super(const LocaleState(locale: LocaleConstants.defaultLocale));

  void setLocale(Locale locale) {
    if (LocaleConstants.supportedLocales.contains(locale)) {
      emit(LocaleState(locale: locale));
    }
  }

  void setLocaleByCode(String languageCode) {
    final locale = LocaleConstants.fromLanguageCode(languageCode);
    if (locale != null) {
      emit(LocaleState(locale: locale));
    }
  }

  @override
  LocaleState? fromJson(Map<String, dynamic> json) {
    try {
      final languageCode = json['languageCode'] as String;
      final locale = LocaleConstants.fromLanguageCode(languageCode);
      return LocaleState(locale: locale ?? LocaleConstants.defaultLocale);
    } catch (_) {
      return null;
    }
  }

  @override
  Map<String, dynamic>? toJson(LocaleState state) {
    return {
      'languageCode': state.locale.languageCode,
    };
  }
}
