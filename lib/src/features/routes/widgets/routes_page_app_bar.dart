import 'package:flutter/material.dart';
import '../types/route_filtering_method.dart';
import '../types/route_sorting_method.dart';
import '../utils/context_extensions.dart';
import 'filter_chip.dart';
import 'sorting_chip.dart';

class RoutesPageAppBar extends StatelessWidget implements PreferredSizeWidget {
  const RoutesPageAppBar({
    super.key,
    required this.sortingMethod,
    required this.filteringMethods,
    this.onSortTap,
    this.onFilterTap,
    this.onSortingChipTap,
    this.onSortingChipRemove,
    this.onFilteringChipTap,
    this.onFilteringChipRemove,
  });

  final RouteSortingMethod sortingMethod;
  final List<RouteFilteringMethod>? filteringMethods;
  final VoidCallback? onSortTap;
  final VoidCallback? onFilterTap;
  final VoidCallback? onSortingChipTap;
  final VoidCallback? onSortingChipRemove;
  final void Function(RouteFilteringMethod)? onFilteringChipTap;
  final void Function(RouteFilteringMethod)? onFilteringChipRemove;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(30),
        child: SizedBox(
          height: 30,
          child: ListView(
            padding: .symmetric(horizontal: 16),
            scrollDirection: .horizontal,
            children: [
              SortingChip(
                sortingMethod: sortingMethod,
                onTap: onSortingChipTap,
                onRemoveTap: onSortingChipRemove,
              ),
              if (filteringMethods != null && filteringMethods!.isNotEmpty) ...[
                Center(
                  child: SizedBox(
                    height: 25,
                    child: VerticalDivider(
                      color: context.colorScheme.outline,
                      thickness: 2,
                    ),
                  ),
                ),
                ...filteringMethods!.map(
                  (filter) => Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: FilteringChip(
                      filteringMethod: filter,
                      onTap: () => onFilteringChipTap?.call(filter),
                      onRemoveTap: () => onFilteringChipRemove?.call(filter),
                    ),
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
      centerTitle: true,
      title: Text('Routes'),
      actions: [
        GestureDetector(
          onTap: onSortTap,
          child: Image.asset('assets/icons/sort.png', height: 22, width: 22),
        ),
        SizedBox(width: 10),
        GestureDetector(
          onTap: onFilterTap,
          child: Image.asset('assets/icons/filter.png', height: 22, width: 22),
        ),
        SizedBox(width: 10),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(90);
}
