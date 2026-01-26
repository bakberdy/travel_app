import 'package:flutter/material.dart';
import 'package:travel_app/src/core/language/generated/app_localizations.dart';
import 'package:travel_app/src/features/routes/domain/entities/route_sorting_method_entity.dart';

extension RouteSortingMethodLocalization on RouteSortingMethodEntity {
  String localize(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    
    switch (this) {
      case RouteSortingMethodEntity.distanceAscending:
        return l10n.sortingDistanceAscending;
      case RouteSortingMethodEntity.distanceDescending:
        return l10n.sortingDistanceDescending;
      case RouteSortingMethodEntity.difficultyAscending:
        return l10n.sortingDifficultyAscending;
      case RouteSortingMethodEntity.difficultyDescending:
        return l10n.sortingDifficultyDescending;
    }
  }
}