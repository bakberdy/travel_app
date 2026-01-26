
import 'package:flutter/material.dart';
import 'package:travel_app/src/core/utils/extensions/context_extensions.dart';

class FilteringChip extends StatelessWidget {
  const FilteringChip({
    super.key,
    required this.label,
    this.onTap,
    this.onRemoveTap,
  });

  final String label;
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
            Text(
             label,
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