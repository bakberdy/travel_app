import 'package:flutter/material.dart';
import 'package:travel_app/src/config/theme/app_theme.dart';

enum RouteDifficulty { easy, medium, hard }

extension RouteDifficultyExtension on RouteDifficulty {
  String get label {
    switch (this) {
      case RouteDifficulty.easy:
        return 'Easy';
      case RouteDifficulty.medium:
        return 'Medium';
      case RouteDifficulty.hard:
        return 'Hard';
    }
  }

  Color getColor(BuildContext context) {
    final difficultyColors = Theme.of(context).extension<DifficultyColors>()!;
    switch (this) {
      case RouteDifficulty.easy:
        return difficultyColors.easy;
      case RouteDifficulty.medium:
        return difficultyColors.medium;
      case RouteDifficulty.hard:
        return difficultyColors.hard;
    }
  }
}