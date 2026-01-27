import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_kk.dart';
import 'app_localizations_ru.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('kk'),
    Locale('ru'),
  ];

  /// No description provided for @errorTitle.
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get errorTitle;

  /// No description provided for @validationErrorTitle.
  ///
  /// In en, this message translates to:
  /// **'Validation Error'**
  String get validationErrorTitle;

  /// No description provided for @networkErrorTitle.
  ///
  /// In en, this message translates to:
  /// **'Network Error'**
  String get networkErrorTitle;

  /// No description provided for @serverErrorTitle.
  ///
  /// In en, this message translates to:
  /// **'Server Error'**
  String get serverErrorTitle;

  /// No description provided for @authErrorTitle.
  ///
  /// In en, this message translates to:
  /// **'Authentication Error'**
  String get authErrorTitle;

  /// No description provided for @failure_1000.
  ///
  /// In en, this message translates to:
  /// **'Server error occurred'**
  String get failure_1000;

  /// No description provided for @failure_1001.
  ///
  /// In en, this message translates to:
  /// **'No internet connection. Please check your network settings.'**
  String get failure_1001;

  /// No description provided for @failure_1002.
  ///
  /// In en, this message translates to:
  /// **'Request timed out. Please try again.'**
  String get failure_1002;

  /// No description provided for @failure_1003.
  ///
  /// In en, this message translates to:
  /// **'You are not authorized. Please log in again.'**
  String get failure_1003;

  /// No description provided for @failure_1004.
  ///
  /// In en, this message translates to:
  /// **'The requested resource was not found.'**
  String get failure_1004;

  /// No description provided for @failure_1005.
  ///
  /// In en, this message translates to:
  /// **'You don\'t have permission to access this resource.'**
  String get failure_1005;

  /// No description provided for @failure_2000.
  ///
  /// In en, this message translates to:
  /// **'Failed to load cached data.'**
  String get failure_2000;

  /// No description provided for @failure_2001.
  ///
  /// In en, this message translates to:
  /// **'Storage operation failed. Please check available space.'**
  String get failure_2001;

  /// No description provided for @failure_3000.
  ///
  /// In en, this message translates to:
  /// **'Please check your input and try again.'**
  String get failure_3000;

  /// No description provided for @failure_3001.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid email address.'**
  String get failure_3001;

  /// No description provided for @failure_3002.
  ///
  /// In en, this message translates to:
  /// **'Password must be at least {minLength} characters long.'**
  String failure_3002(String minLength);

  /// No description provided for @failure_3003.
  ///
  /// In en, this message translates to:
  /// **'Password is too weak. Use a stronger password.'**
  String get failure_3003;

  /// No description provided for @failure_3004.
  ///
  /// In en, this message translates to:
  /// **'{field} is required.'**
  String failure_3004(String field);

  /// No description provided for @failure_3005.
  ///
  /// In en, this message translates to:
  /// **'Minimum distance ({minKm} km) cannot be greater than maximum distance ({maxKm} km).'**
  String failure_3005(String minKm, String maxKm);

  /// No description provided for @failure_3006.
  ///
  /// In en, this message translates to:
  /// **'Minimum distance cannot be negative ({minKm} km).'**
  String failure_3006(String minKm);

  /// No description provided for @failure_3007.
  ///
  /// In en, this message translates to:
  /// **'Maximum distance cannot be negative ({maxKm} km).'**
  String failure_3007(String maxKm);

  /// No description provided for @failure_4000.
  ///
  /// In en, this message translates to:
  /// **'Operation failed due to business rules.'**
  String get failure_4000;

  /// No description provided for @failure_4001.
  ///
  /// In en, this message translates to:
  /// **'You don\'t have permission to perform this action.'**
  String get failure_4001;

  /// No description provided for @failure_4002.
  ///
  /// In en, this message translates to:
  /// **'This resource is already in use.'**
  String get failure_4002;

  /// No description provided for @failure_4003.
  ///
  /// In en, this message translates to:
  /// **'Your account has been disabled. Please contact support.'**
  String get failure_4003;

  /// No description provided for @failure_4004.
  ///
  /// In en, this message translates to:
  /// **'This email address is already registered.'**
  String get failure_4004;

  /// No description provided for @failure_5000.
  ///
  /// In en, this message translates to:
  /// **'An unexpected error occurred. Please try again.'**
  String get failure_5000;

  /// No description provided for @failure_5001.
  ///
  /// In en, this message translates to:
  /// **'Operation was cancelled.'**
  String get failure_5001;

  /// No description provided for @sortingDistanceAscending.
  ///
  /// In en, this message translates to:
  /// **'Distance: Shorter to Longer'**
  String get sortingDistanceAscending;

  /// No description provided for @sortingDistanceDescending.
  ///
  /// In en, this message translates to:
  /// **'Distance: Longer to Shorter'**
  String get sortingDistanceDescending;

  /// No description provided for @sortingDifficultyAscending.
  ///
  /// In en, this message translates to:
  /// **'Difficulty: Easiest First'**
  String get sortingDifficultyAscending;

  /// No description provided for @sortingDifficultyDescending.
  ///
  /// In en, this message translates to:
  /// **'Difficulty: Hardest First'**
  String get sortingDifficultyDescending;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'kk', 'ru'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'kk':
      return AppLocalizationsKk();
    case 'ru':
      return AppLocalizationsRu();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
