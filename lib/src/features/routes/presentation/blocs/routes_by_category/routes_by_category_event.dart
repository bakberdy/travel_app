part of 'routes_by_category_bloc.dart';

@freezed
sealed class RoutesByCategoryEvent with _$RoutesByCategoryEvent {
  const factory RoutesByCategoryEvent.loadPopular({RouteTypeEntity? type}) = LoadPopularRoutesEvent;
  const factory RoutesByCategoryEvent.loadRecommended({RouteTypeEntity? type}) = LoadRecommendedRoutesEvent;
  const factory RoutesByCategoryEvent.loadAll({RouteTypeEntity? type}) = LoadAllRoutesEvent;
}