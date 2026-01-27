// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get errorTitle => 'Error';

  @override
  String get validationErrorTitle => 'Validation Error';

  @override
  String get networkErrorTitle => 'Network Error';

  @override
  String get serverErrorTitle => 'Server Error';

  @override
  String get authErrorTitle => 'Authentication Error';

  @override
  String get failure_1000 => 'Server error occurred';

  @override
  String get failure_1001 =>
      'No internet connection. Please check your network settings.';

  @override
  String get failure_1002 => 'Request timed out. Please try again.';

  @override
  String get failure_1003 => 'You are not authorized. Please log in again.';

  @override
  String get failure_1004 => 'The requested resource was not found.';

  @override
  String get failure_1005 =>
      'You don\'t have permission to access this resource.';

  @override
  String get failure_2000 => 'Failed to load cached data.';

  @override
  String get failure_2001 =>
      'Storage operation failed. Please check available space.';

  @override
  String get failure_3000 => 'Please check your input and try again.';

  @override
  String get failure_3001 => 'Please enter a valid email address.';

  @override
  String failure_3002(String minLength) {
    return 'Password must be at least $minLength characters long.';
  }

  @override
  String get failure_3003 => 'Password is too weak. Use a stronger password.';

  @override
  String failure_3004(String field) {
    return '$field is required.';
  }

  @override
  String failure_3005(String minKm, String maxKm) {
    return 'Minimum distance ($minKm km) cannot be greater than maximum distance ($maxKm km).';
  }

  @override
  String failure_3006(String minKm) {
    return 'Minimum distance cannot be negative ($minKm km).';
  }

  @override
  String failure_3007(String maxKm) {
    return 'Maximum distance cannot be negative ($maxKm km).';
  }

  @override
  String get failure_4000 => 'Operation failed due to business rules.';

  @override
  String get failure_4001 =>
      'You don\'t have permission to perform this action.';

  @override
  String get failure_4002 => 'This resource is already in use.';

  @override
  String get failure_4003 =>
      'Your account has been disabled. Please contact support.';

  @override
  String get failure_4004 => 'This email address is already registered.';

  @override
  String get failure_5000 => 'An unexpected error occurred. Please try again.';

  @override
  String get failure_5001 => 'Operation was cancelled.';

  @override
  String get sortingDistanceAscending => 'Distance: Shorter to Longer';

  @override
  String get sortingDistanceDescending => 'Distance: Longer to Shorter';

  @override
  String get sortingDifficultyAscending => 'Difficulty: Easiest First';

  @override
  String get sortingDifficultyDescending => 'Difficulty: Hardest First';
}
