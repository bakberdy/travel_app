part of 'routes_by_category_bloc.dart';

@freezed
sealed class RoutesByCategoryState with _$RoutesByCategoryState {
  const factory RoutesByCategoryState({
    @Default([]) List<RouteEntity> popularRoutes,
    @Default([]) List<RouteEntity> recommendedRoutes,
    @Default(false) bool isLoadingPopular,
    @Default(false) bool isLoadingRecommended,
    String? popularError,
    String? recommendedError,
  })=_RoutesByCategoryState;
}
