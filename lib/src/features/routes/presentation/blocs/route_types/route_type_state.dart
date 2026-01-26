part of 'route_type_bloc.dart';

@freezed
sealed class RouteTypeState with _$RouteTypeState {
  const factory RouteTypeState({
    Set<RouteTypeEntity>? routeTypes,
    @Default(StateStatus.initial) StateStatus routeTypesStatus,
    String? routeTypeErrorMessage
  }) = _RouteTypeState;
}
