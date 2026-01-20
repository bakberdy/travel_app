
import 'package:flutter/material.dart';
import 'package:travel_app/utils/context_extensions.dart';

class RouteTypeSectionHeader extends StatelessWidget {
  const RouteTypeSectionHeader({super.key, required this.title, this.onSeeAllTapped});
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