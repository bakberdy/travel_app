
import 'package:flutter/material.dart';
import 'package:travel_app/context_extensions.dart';

class CategoryHeader extends StatelessWidget {
  const CategoryHeader({super.key, required this.title, this.onSeeAllTapped});
  final String title;
  final VoidCallback? onSeeAllTapped;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .spaceBetween,
      children: [
        Text(title, style: context.textTheme.titleLarge),
        InkWell(
          borderRadius: .circular(16),
          onTap: onSeeAllTapped,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              'See all',
              style: context.textTheme.labelMedium?.copyWith(
                color: context.colorScheme.onPrimaryContainer,
                fontWeight: .w600,
              ),
            ),
          ),
        ),
      ],
    );
  }
}