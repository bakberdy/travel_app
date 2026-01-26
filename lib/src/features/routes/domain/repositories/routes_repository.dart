import 'package:travel_app/src/core/utils/typedef.dart';
import 'package:travel_app/src/features/routes/domain/entities/route_type_entity.dart';

abstract interface class RoutesRepository {
  FutureEither<Set<RouteTypeEntity>> getRouteTypes();
}