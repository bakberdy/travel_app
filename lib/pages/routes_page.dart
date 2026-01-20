import 'package:flutter/material.dart';
import 'package:travel_app/entities/route_entity.dart';
import 'package:travel_app/types/route_filtering_method.dart';
import 'package:travel_app/types/route_sorting_method.dart';
import 'package:travel_app/widgets/routes_page_app_bar.dart';

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
      appBar: RoutesPageAppBar(sortingMethod: sortingMethod, filteringMethods: filteringMethods),
    );
  }
}
