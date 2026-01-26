part of 'routes_bloc.dart';

@freezed
sealed class RoutesEvent with _$RoutesEvent {
  const factory RoutesEvent.getRoutes({
    required GetRouteRequestParametersEntity params,
  }) = GetRoutesEvent;
}