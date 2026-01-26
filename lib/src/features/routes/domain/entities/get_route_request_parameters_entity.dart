import 'package:travel_app/src/features/routes/domain/entities/route_category_entity.dart'
    show RouteCategoryEntity;
import 'package:travel_app/src/features/routes/domain/entities/route_sorting_method_entity.dart';
import 'package:travel_app/src/features/routes/domain/entities/route_type_entity.dart';
import 'package:travel_app/src/features/routes/domain/entities/route_difficulty_entity.dart';

class GetRouteRequestParametersEntity {
  final List<RouteTypeEntity>? types;
  final RouteCategoryEntity? category;
  final RouteSortingMethodEntity? sortingMethod;
  final Set<RouteDifficultyEntity>? difficulties;
  final double? minKm;
  final double? maxKm;

  GetRouteRequestParametersEntity({
    this.types,
    this.category,
    this.sortingMethod,
    this.difficulties,
    this.minKm,
    this.maxKm,
  });
}
