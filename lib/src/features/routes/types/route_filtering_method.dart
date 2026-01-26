
import 'route_difficulty.dart';

sealed class RouteFilteringMethod {
  const RouteFilteringMethod();
  
  factory RouteFilteringMethod.byType({required String type}) => 
      RouteFilteringMethodByType(type: type);
  
  factory RouteFilteringMethod.byDifficulty({required RouteDifficulty difficulty}) => 
      RouteFilteringMethodByDifficulty(difficulty: difficulty);
  
  factory RouteFilteringMethod.byDistanceRange({
    required double minKm,
    required double maxKm,
  }) => RouteFilteringMethodByDistanceRange(minKm: minKm, maxKm: maxKm);

}

class RouteFilteringMethodByType extends RouteFilteringMethod {
  const RouteFilteringMethodByType({required this.type});
  
  final String type;
}

class RouteFilteringMethodByDifficulty extends RouteFilteringMethod {
  const RouteFilteringMethodByDifficulty({required this.difficulty});
  
  final RouteDifficulty difficulty;
}

class RouteFilteringMethodByDistanceRange extends RouteFilteringMethod {
  const RouteFilteringMethodByDistanceRange({
    required this.minKm,
    required this.maxKm,
  });
  
  final double minKm;
  final double maxKm;
}
