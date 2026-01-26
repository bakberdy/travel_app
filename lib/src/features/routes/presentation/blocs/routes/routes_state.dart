part of 'routes_bloc.dart';

@freezed
sealed class RoutesState with _$RoutesState {
  const factory RoutesState({
    @Default([]) List<RouteEntity> routes,
    @Default(StateStatus.initial) StateStatus routesStatus,
    String? routesErrorMessage,
    @Default(RouteSortingMethodEntity.distanceAscending) RouteSortingMethodEntity sortingMethod,
    List<RouteFilteringMethod>? filteringMethods,
    @Default('') String searchQuery,
  }) = _RoutesState;
}
