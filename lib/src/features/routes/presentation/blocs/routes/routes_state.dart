part of 'routes_bloc.dart';

@freezed
sealed class RoutesState with _$RoutesState {
  const factory RoutesState({
    @Default([]) List<RouteEntity> routes,
    @Default(StateStatus.initial) StateStatus routesStatus,
    String? routesErrorMessage,
    @Default('') String searchQuery,

    @Default(RouteSortingMethodEntity.distanceAscending) RouteSortingMethodEntity sortingMethod,
    RouteCategoryEntity? filteringCategory,
    Set<RouteTypeEntity>? filteringTypes,
    Set<RouteDifficultyEntity>? filteringDifficulties,
    double? minKm,
    double? maxKm,

    @Default([]) List<FilterEntity> filters


  }) = _RoutesState;
}
