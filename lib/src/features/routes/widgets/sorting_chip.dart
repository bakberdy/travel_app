
import 'package:flutter/material.dart';
import 'package:travel_app/src/core/utils/extensions/context_extensions.dart';
import '../types/route_sorting_method.dart';

class SortingChip extends StatelessWidget {
  const SortingChip({
    super.key,
    required this.sortingMethod,
    this.onTap,
    this.onRemoveTap,
  });

  final RouteSortingMethod sortingMethod;
  final VoidCallback? onTap;
  final VoidCallback? onRemoveTap;

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
            SizedBox(
              height: 20,
              width: 20,
              child: Image.asset(
                'assets/icons/sort.png',
                color: context.colorScheme.onPrimary,
              ),
            ),
            SizedBox(width: 5),

            Text(
              sortingMethod.name,
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
