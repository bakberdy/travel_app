import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:travel_app/src/core/utils/typedef.dart';
import 'package:travel_app/src/features/routes/domain/entities/get_route_request_parameters_entity.dart';
import 'package:travel_app/src/features/routes/domain/entities/route_entity.dart';
import 'package:travel_app/src/features/routes/domain/entities/route_type_entity.dart';
import 'package:travel_app/src/features/routes/domain/repositories/routes_repository.dart';

@LazySingleton(as: RoutesRepository)
class RoutesRepositoryImpl implements RoutesRepository {
  @override
  FutureEither<Set<RouteTypeEntity>> getRouteTypes() async {
    await Future.delayed(Duration(seconds: 2));
    // return Left(CancelledFailure());
    return Right({RouteTypeEntity.lake, RouteTypeEntity.waterfall});
  }

  @override
  FutureEither<List<RouteEntity>> getRoutes({required GetRouteRequestParametersEntity params}) async {
    await Future.delayed(Duration(seconds: 2));
    return Right([]);
  }
}
