import 'package:flutter/material.dart';

class AppThemeExtension extends ThemeExtension<AppThemeExtension> {
  final Color success;
  final Color warning;
  final Color info;
  final Color mutedForeground;
  final Color surfaceMuted;
  final Color cardStroke;
  final Color accentGlow;

  const AppThemeExtension({
    required this.success,
    required this.warning,
    required this.info,
    required this.mutedForeground,
    required this.surfaceMuted,
    required this.cardStroke,
    required this.accentGlow,
  });

  @override
  ThemeExtension<AppThemeExtension> copyWith({
    Color? success,
    Color? warning,
    Color? info,
    Color? mutedForeground,
    Color? surfaceMuted,
    Color? cardStroke,
    Color? accentGlow,
  }) {
    return AppThemeExtension(
      success: success ?? this.success,
      warning: warning ?? this.warning,
      info: info ?? this.info,
      mutedForeground: mutedForeground ?? this.mutedForeground,
      surfaceMuted: surfaceMuted ?? this.surfaceMuted,
      cardStroke: cardStroke ?? this.cardStroke,
      accentGlow: accentGlow ?? this.accentGlow,
    );
  }

  @override
  ThemeExtension<AppThemeExtension> lerp(
    ThemeExtension<AppThemeExtension>? other,
    double t,
  ) {
    if (other is! AppThemeExtension) {
      return this;
    }
    return AppThemeExtension(
      success: Color.lerp(success, other.success, t)!,
      warning: Color.lerp(warning, other.warning, t)!,
      info: Color.lerp(info, other.info, t)!,
      mutedForeground: Color.lerp(mutedForeground, other.mutedForeground, t)!,
      surfaceMuted: Color.lerp(surfaceMuted, other.surfaceMuted, t)!,
      cardStroke: Color.lerp(cardStroke, other.cardStroke, t)!,
      accentGlow: Color.lerp(accentGlow, other.accentGlow, t)!,
    );
  }
}

extension AppThemeExtensionGetter on BuildContext {
  AppThemeExtension get appTheme {
    return Theme.of(this).extension<AppThemeExtension>()!;
  }
}
