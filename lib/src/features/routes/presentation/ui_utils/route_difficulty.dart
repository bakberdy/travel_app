

import 'package:flutter/material.dart';
import 'package:travel_app/src/config/theme/app_theme_extensions.dart';
import 'package:travel_app/src/features/routes/domain/entities/route_difficulty_entity.dart';

extension RouteDifficultyExtension on RouteDifficultyEntity {
  String get label {
    switch (this) {
      case RouteDifficultyEntity.easy:
        return 'Easy';
      case RouteDifficultyEntity.medium:
        return 'Medium';
      case RouteDifficultyEntity.hard:
        return 'Hard';
    }
  }

  Color getColor(BuildContext context) {
    final difficultyColors = Theme.of(context).extension<DifficultyColors>()!;
    switch (this) {
      case RouteDifficultyEntity.easy:
        return difficultyColors.easy;
      case RouteDifficultyEntity.medium:
        return difficultyColors.medium;
      case RouteDifficultyEntity.hard:
        return difficultyColors.hard;
    }
  }
}