import 'package:flutter/material.dart';
import 'package:travel_app/types/route_sorting_method.dart';
import 'package:travel_app/utils/context_extensions.dart';

class SortingBottomSheet extends StatelessWidget {
  const SortingBottomSheet({
    super.key,
    required this.currentSortingMethod,
    required this.onSortingMethodSelected,
  });

  final RouteSortingMethod currentSortingMethod;
  final ValueChanged<RouteSortingMethod> onSortingMethodSelected;

  String _getSortingMethodLabel(RouteSortingMethod method) {
    switch (method) {
      case RouteSortingMethod.distanceAscending:
        return 'Distance: Shortest First';
      case RouteSortingMethod.distanceDescending:
        return 'Distance: Longest First';
      case RouteSortingMethod.difficultyAscending:
        return 'Difficulty: Easy First';
      case RouteSortingMethod.difficultyDescending:
        return 'Difficulty: Hard First';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Sort By',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(Icons.close),
                    padding: EdgeInsets.zero,
                    constraints: BoxConstraints(),
                  ),
                ],
              ),
            ),
            Divider(height: 1, color: context.colorScheme.outline,),
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: RouteSortingMethod.values.length,
              separatorBuilder: (context, index) => SizedBox(height: 0),
              itemBuilder: (context, index) {
                final method = RouteSortingMethod.values[index];
                final isSelected = method == currentSortingMethod;

                return ListTile(
                  title: Text(
                    _getSortingMethodLabel(method),
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: isSelected
                              ? Theme.of(context).colorScheme.primary
                              : Theme.of(context).colorScheme.onSurface,
                          fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
                        ),
                  ),
                  trailing: isSelected
                      ? Icon(
                          Icons.check,
                          color: Theme.of(context).colorScheme.primary,
                        )
                      : null,
                  onTap: () {
                    onSortingMethodSelected(method);
                    Navigator.pop(context);
                  },
                );
              },
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  static void show(
    BuildContext context, {
    required RouteSortingMethod currentSortingMethod,
    required ValueChanged<RouteSortingMethod> onSortingMethodSelected,
  }) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => SortingBottomSheet(
        currentSortingMethod: currentSortingMethod,
        onSortingMethodSelected: onSortingMethodSelected,
      ),
    );
  }
}
