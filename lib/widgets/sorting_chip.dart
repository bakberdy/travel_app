
import 'package:flutter/material.dart';
import 'package:travel_app/types/route_sorting_method.dart';
import 'package:travel_app/utils/context_extensions.dart';

class SortingChip extends StatelessWidget {
  const SortingChip({super.key, required this.sortingMethod});

  final RouteSortingMethod sortingMethod;

  @override
  Widget build(BuildContext context) {
    return Container(
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
        ],
      ),
    );
  }
}

