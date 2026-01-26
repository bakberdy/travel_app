import 'package:freezed_annotation/freezed_annotation.dart';
import 'route_difficulty_entity.dart';

part 'route_filtering_method_entity.freezed.dart';

@freezed
sealed class RouteFilteringMethod with _$RouteFilteringMethod {
  const factory RouteFilteringMethod.byDifficulty({
    required RouteDifficultyEntity difficulty,
  }) = RouteFilteringMethodByDifficulty;

  const factory RouteFilteringMethod.byDistanceRange({
    required double minKm,
    required double maxKm,
  }) = RouteFilteringMethodByDistanceRange;

  const factory RouteFilteringMethod.byType({
    required String type,
  }) = RouteFilteringMethodByType;
}
