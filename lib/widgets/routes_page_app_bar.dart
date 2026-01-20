
import 'package:flutter/material.dart';
import 'package:travel_app/types/route_filtering_method.dart';
import 'package:travel_app/types/route_sorting_method.dart';
import 'package:travel_app/utils/context_extensions.dart';
import 'package:travel_app/widgets/filter_chip.dart';
import 'package:travel_app/widgets/sorting_chip.dart';

class RoutesPageAppBar extends StatelessWidget implements PreferredSizeWidget{
  const RoutesPageAppBar({
    super.key,
    required this.sortingMethod,
    required this.filteringMethods,
  });

  final RouteSortingMethod sortingMethod;
  final List<RouteFilteringMethod>? filteringMethods;

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
              SortingChip(sortingMethod: sortingMethod),
              if (filteringMethods != null &&
                  filteringMethods!.isNotEmpty) ...[
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
                      onRemoveTap: () {},
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
          onTap: () {},
          child: Image.asset('assets/icons/sort.png', height: 22, width: 22),
        ),
        SizedBox(width: 10),
        GestureDetector(
          onTap: () {},
          child: Image.asset(
            'assets/icons/filter.png',
            height: 22,
            width: 22,
          ),
        ),
        SizedBox(width: 10),
      ],
    );
  }
  
  @override
  Size get preferredSize => Size.fromHeight(90);
}
