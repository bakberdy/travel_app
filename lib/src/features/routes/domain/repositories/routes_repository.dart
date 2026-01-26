import 'package:travel_app/src/core/utils/typedef.dart';
import 'package:travel_app/src/features/routes/domain/entities/get_route_request_parameters_entity.dart';
import 'package:travel_app/src/features/routes/domain/entities/route_entity.dart';
import 'package:travel_app/src/features/routes/domain/entities/route_type_entity.dart';

abstract interface class RoutesRepository {
  FutureEither<Set<RouteTypeEntity>> getRouteTypes();
  FutureEither<List<RouteEntity>> getRoutes({
    required GetRouteRequestParametersEntity params,
  });
}
