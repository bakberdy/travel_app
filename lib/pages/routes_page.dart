import 'package:flutter/material.dart';
import 'package:travel_app/utils/context_extensions.dart';
import 'package:travel_app/entities/route_entity.dart';
import 'package:travel_app/types/route_filtering_method.dart';
import 'package:travel_app/types/route_sorting_method.dart';
import 'package:travel_app/widgets/filter_chip.dart';
import 'package:travel_app/widgets/sorting_chip.dart';

class RoutesPage extends StatefulWidget {
  const RoutesPage({super.key, this.type});

  final String? type;

  @override
  State<RoutesPage> createState() => _RoutesPageState();
}

class _RoutesPageState extends State<RoutesPage> {
  final List<RouteEntity> routes = [];
  RouteSortingMethod sortingMethod = RouteSortingMethod.distanceAscending;
  List<RouteFilteringMethod>? filteringMethods = [
    RouteFilteringMethod.byDifficulty(difficulty: .hard),
    RouteFilteringMethod.byDistanceRange(minKm: 1.3, maxKm: 10.3),
    RouteFilteringMethod.byType(type: 'Lake'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      ),
    );
  }
}
