import 'package:flutter/material.dart';


class DifficultyColors extends ThemeExtension<DifficultyColors> {
  final Color easy;
  final Color medium;
  final Color hard;

  const DifficultyColors({
    required this.easy,
    required this.medium,
    required this.hard,
  });

  @override
  ThemeExtension<DifficultyColors> copyWith({
    Color? easy,
    Color? medium,
    Color? hard,
  }) {
    return DifficultyColors(
      easy: easy ?? this.easy,
      medium: medium ?? this.medium,
      hard: hard ?? this.hard,
    );
  }

  @override
  ThemeExtension<DifficultyColors> lerp(
    ThemeExtension<DifficultyColors>? other,
    double t,
  ) {
    if (other is! DifficultyColors) {
      return this;
    }
    return DifficultyColors(
      easy: Color.lerp(easy, other.easy, t)!,
      medium: Color.lerp(medium, other.medium, t)!,
      hard: Color.lerp(hard, other.hard, t)!,
    );
  }
}
