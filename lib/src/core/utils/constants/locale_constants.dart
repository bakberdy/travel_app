import 'package:flutter/material.dart';

/// Supported locales for the application
class LocaleConstants {
  LocaleConstants._();

  /// English locale
  static const Locale english = Locale('en');
  
  /// Russian locale
  static const Locale russian = Locale('ru');
  
  /// Kazakh locale
  static const Locale kazakh = Locale('kk');
  
  /// List of all supported locales
  static const List<Locale> supportedLocales = [
    english,
    russian,
    kazakh,
  ];
  
  /// Default locale (fallback)
  static const Locale defaultLocale = english;
  
  /// Get locale from language code
  static Locale? fromLanguageCode(String? code) {
    if (code == null) return null;
    
    switch (code) {
      case 'en':
        return english;
      case 'ru':
        return russian;
      case 'kk':
        return kazakh;
      default:
        return null;
    }
  }
  
  /// Get language name for display
  static String getLanguageName(Locale locale) {
    switch (locale.languageCode) {
      case 'en':
        return 'English';
      case 'ru':
        return 'Русский';
      case 'kk':
        return 'Қазақша';
      default:
        return locale.languageCode;
    }
  }
  
  /// Get native language name
  static String getNativeLanguageName(String languageCode) {
    switch (languageCode) {
      case 'en':
        return 'English';
      case 'ru':
        return 'Русский';
      case 'kk':
        return 'Қазақша';
      default:
        return languageCode;
    }
  }
}
