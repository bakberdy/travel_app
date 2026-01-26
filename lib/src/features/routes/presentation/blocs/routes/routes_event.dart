part of 'routes_bloc.dart';

@freezed
sealed class RoutesEvent with _$RoutesEvent {
  const factory RoutesEvent.getRoutes({
    required GetRouteRequestParametersEntity params,
  }) = GetRoutesEvent;

  const factory RoutesEvent.updateSorting({
    required RouteSortingMethodEntity sortingMethod,
  }) = UpdateSortingEvent;

  const factory RoutesEvent.updateSearch({required String searchQuery}) =
      UpdateSearchEvent;

  const factory RoutesEvent.updateFilteringCategory({
    required RouteCategoryEntity? category,
  }) = UpdateFilteringCategoryEvent;

  const factory RoutesEvent.updateFilteringTypes({
    required Set<RouteTypeEntity>? types,
  }) = UpdateFilteringTypesEvent;

  const factory RoutesEvent.updateFilteringDifficulties({
    required Set<RouteDifficultyEntity>? difficulties,
  }) = UpdateFilteringDifficultiesEvent;

  const factory RoutesEvent.updateDistanceRange(double? minKm, double? maxKm) =
      UpdateDistanceRangeEvent;

  const factory RoutesEvent.removeFilter(FilterEntity filter) = RemoveFilterEvent;
}
