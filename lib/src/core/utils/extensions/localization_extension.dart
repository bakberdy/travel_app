import 'package:flutter/material.dart';
import 'package:travel_app/src/core/language/generated/app_localizations.dart';

/// Extension for easy access to localization in BuildContext
extension LocalizationExtension on BuildContext {
  /// Get AppLocalizations instance
  AppLocalizations get l10n => AppLocalizations.of(this);
  
  /// Get current locale
  Locale get locale => Localizations.localeOf(this);
  
  /// Check if current locale is RTL
  bool get isRTL {
    final languageCode = locale.languageCode;
    return ['ar', 'he', 'fa', 'ur'].contains(languageCode);
  }
  
  /// Get language code
  String get languageCode => locale.languageCode;
}
