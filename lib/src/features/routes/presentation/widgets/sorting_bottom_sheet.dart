import 'package:flutter/material.dart';
import 'package:travel_app/src/core/utils/extensions/context_extensions.dart';
import '../../domain/entities/route_sorting_method_entity.dart';

class SortingBottomSheet extends StatelessWidget {
  const SortingBottomSheet({
    super.key,
    required this.currentSortingMethod,
    required this.onSortingMethodSelected,
  });

  final RouteSortingMethodEntity currentSortingMethod;
  final ValueChanged<RouteSortingMethodEntity> onSortingMethodSelected;

  String _getSortingMethodLabel(RouteSortingMethodEntity method) {
    switch (method) {
      case RouteSortingMethodEntity.distanceAscending:
        return 'Distance: Shortest First';
      case RouteSortingMethodEntity.distanceDescending:
        return 'Distance: Longest First';
      case RouteSortingMethodEntity.difficultyAscending:
        return 'Difficulty: Easy First';
      case RouteSortingMethodEntity.difficultyDescending:
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
              itemCount: RouteSortingMethodEntity.values.length,
              separatorBuilder: (context, index) => SizedBox(height: 0),
              itemBuilder: (context, index) {
                final method = RouteSortingMethodEntity.values[index];
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
    required RouteSortingMethodEntity currentSortingMethod,
    required ValueChanged<RouteSortingMethodEntity> onSortingMethodSelected,
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
