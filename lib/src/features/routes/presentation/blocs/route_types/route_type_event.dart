part of 'route_type_bloc.dart';

@freezed
class RouteTypeEvent with _$RouteTypeEvent {
  const factory RouteTypeEvent.getRouteTypes() = GetRouteTypesEvent;
}