import 'package:injectable/injectable.dart';
import 'package:travel_app/src/core/utils/typedef.dart';
import 'package:travel_app/src/features/routes/domain/entities/route_type_entity.dart';
import 'package:travel_app/src/features/routes/domain/repositories/routes_repository.dart';

@LazySingleton(as: RoutesRepository)
class RoutesRepositoryImpl implements RoutesRepository {
  @override
  FutureEither<List<RouteTypeEntity>> getRouteTypes() {
   
  }
}