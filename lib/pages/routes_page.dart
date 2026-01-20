import 'package:flutter/material.dart';
import 'package:travel_app/entities/route_entity.dart';

class RoutesPage extends StatefulWidget {
  const RoutesPage({super.key, this.type});

  final String? type;

  @override
  State<RoutesPage> createState() => _RoutesPageState();
}

class _RoutesPageState extends State<RoutesPage> {
  final List<RouteEntity> routes = [];
  SortingMethod sortingMethod = SortingMethod.distanceAscending;
  FilteringMethod? filteringMethod;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(20),
          child: Row(
            children: [Container(color: Colors.amber, height: 30, width: 100)],
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

enum SortingMethod {
  distanceAscending,
  distanceDescending,
  difficultyAscending,
  difficultyDescending,
}


sealed class FilteringMethod {
  const FilteringMethod();
  
  factory FilteringMethod.byType({required String type}) => 
      FilteringMethodByType(type: type);
  
  factory FilteringMethod.byDifficulty({required RouteDifficulty difficulty}) => 
      FilteringMethodByDifficulty(difficulty: difficulty);
  
  factory FilteringMethod.byDistanceRange({
    required double minKm,
    required double maxKm,
  }) => FilteringMethodByDistanceRange(minKm: minKm, maxKm: maxKm);

}

class FilteringMethodByType extends FilteringMethod {
  const FilteringMethodByType({required this.type});
  
  final String type;
}

class FilteringMethodByDifficulty extends FilteringMethod {
  const FilteringMethodByDifficulty({required this.difficulty});
  
  final RouteDifficulty difficulty;
}

class FilteringMethodByDistanceRange extends FilteringMethod {
  const FilteringMethodByDistanceRange({
    required this.minKm,
    required this.maxKm,
  });
  
  final double minKm;
  final double maxKm;
}
