
import 'package:flutter/material.dart';
import 'package:travel_app/utils/context_extensions.dart';
import 'package:travel_app/pages/routes_page.dart';
import 'package:travel_app/types/route_filtering_method.dart';
import 'package:travel_app/utils/string_extensions.dart';

class FilteringChip extends StatelessWidget {
  const FilteringChip({
    super.key,
    required this.filteringMethod,
    this.onTap,
    this.onRemoveTap,
  });

  final RouteFilteringMethod filteringMethod;
  final VoidCallback? onTap;
  final VoidCallback? onRemoveTap;

  String _getFilterLabel() {
    return switch (filteringMethod) {
      RouteFilteringMethodByType(:final type) => type,
      RouteFilteringMethodByDifficulty(:final difficulty) =>
        difficulty.name.capitalize(),
      RouteFilteringMethodByDistanceRange(:final minKm, :final maxKm) =>
        '$minKm-$maxKm km',
    };
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: .symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: context.colorScheme.primary,
          borderRadius: .circular(8),
        ),
        child: Row(
          children: [
            Text(
              _getFilterLabel(),
              style: context.textTheme.labelMedium?.copyWith(
                color: context.colorScheme.onPrimary,
              ),
            ),
            if (onRemoveTap != null) ...[
              SizedBox(width: 5),
              GestureDetector(
                onTap: onRemoveTap,
                child: Icon(
                  Icons.clear,
                  size: 18,
                  color: context.colorScheme.onPrimary,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}