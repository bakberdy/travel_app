part of 'routes_bloc.dart';

@freezed
sealed class RoutesEvent with _$RoutesEvent {
  const factory RoutesEvent.getRoutes({
    required GetRouteRequestParametersEntity params,
  }) = GetRoutesEvent;
  
  const factory RoutesEvent.updateSorting({
    required RouteSortingMethodEntity sortingMethod,
  }) = UpdateSortingEvent;
  
  const factory RoutesEvent.updateFilters({
    required List<RouteFilteringMethod> filteringMethods,
  }) = UpdateFiltersEvent;
  
  const factory RoutesEvent.removeFilter({
    required RouteFilteringMethod filterToRemove,
  }) = RemoveFilterEvent;
  
  const factory RoutesEvent.updateSearch({
    required String searchQuery,
  }) = UpdateSearchEvent;
}