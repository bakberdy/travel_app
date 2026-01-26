import 'package:flutter/material.dart';
import 'package:travel_app/src/core/language/generated/app_localizations.dart';
import 'failures.dart';

extension FailureLocalization on Failure {
  /// Get localized message for the failure
  String localizedMessage(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    
    // Get base localized message
    String message = _getLocalizedString(l10n, code);
    
    // Interpolate parameters if present
    if (messageParams != null && messageParams!.isNotEmpty) {
      messageParams!.forEach((key, value) {
        message = message.replaceAll('{$key}', value);
      });
    }
    
    return message;
  }

  /// Get localized title for dialogs/alerts
  String localizedTitle(BuildContext context) {
    if (this is ValidationFailure) {
      return AppLocalizations.of(context).validationErrorTitle;
    } else if (this is NetworkFailure) {
      return AppLocalizations.of(context).networkErrorTitle;
    } else if (this is ServerFailure) {
      return AppLocalizations.of(context).serverErrorTitle;
    } else if (this is UnauthorizedFailure) {
      return AppLocalizations.of(context).authErrorTitle;
    }
    return AppLocalizations.of(context).errorTitle;
  }

  String _getLocalizedString(AppLocalizations l10n, String code, ) {
    // Use reflection or a map to get the localized string
    // This is a simplified approach
    try {
      switch (code) {
        case 'failure_1000': return l10n.failure_1000;
        case 'failure_1001': return l10n.failure_1001;
        case 'failure_1002': return l10n.failure_1002;
        case 'failure_1003': return l10n.failure_1003;
        case 'failure_1004': return l10n.failure_1004;
        case 'failure_1005': return l10n.failure_1005;
        case 'failure_2000': return l10n.failure_2000;
        case 'failure_2001': return l10n.failure_2001;
        case 'failure_3000': return l10n.failure_3000;
        case 'failure_3001': return l10n.failure_3001;
        case 'failure_3002': return l10n.failure_3002(messageParams?['minLength'] ?? '6');
        case 'failure_3003': return l10n.failure_3003;
        case 'failure_3004': return l10n.failure_3004(messageParams?['field'] ?? 'Field');
        case 'failure_3005': return l10n.failure_3005(messageParams?['minKm'] ?? '0', messageParams?['maxKm'] ?? '0');
        case 'failure_3006': return l10n.failure_3006(messageParams?['minKm'] ?? '0');
        case 'failure_3007': return l10n.failure_3007(messageParams?['maxKm'] ?? '0');
        case 'failure_4000': return l10n.failure_4000;
        case 'failure_4001': return l10n.failure_4001;
        case 'failure_4002': return l10n.failure_4002;
        case 'failure_4003': return l10n.failure_4003;
        case 'failure_4004': return l10n.failure_4004;
        case 'failure_5000': return l10n.failure_5000;
        case 'failure_5001': return l10n.failure_5001;
        default: return message; // Fallback to default message
      }
    } catch (e) {
      return message; // Fallback to default message
    }
  }
}

/// Extension for field-specific validation errors
extension ValidationFailureLocalization on ValidationFailure {
  /// Get localized field errors
  Map<String, String>? localizedFieldErrors(BuildContext context) {
    if (fieldErrors == null) return null;
    
    final localizedErrors = <String, String>{};
    fieldErrors!.forEach((field, errorCode) {
      final failure = ValidationFailure(code: errorCode, message: '');
      localizedErrors[field] = failure.localizedMessage(context);
    });
    
    return localizedErrors;
  }
}