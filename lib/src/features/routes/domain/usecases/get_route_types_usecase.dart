import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:travel_app/src/core/error/failures.dart';
import 'package:travel_app/src/core/usecases/usecase.dart';
import 'package:travel_app/src/features/routes/domain/entities/route_type_entity.dart';
import 'package:travel_app/src/features/routes/domain/repositories/routes_repository.dart';

@LazySingleton()
class GetRouteTypesUsecase extends UseCase<List<RouteTypeEntity>, NoParams>{
  final RoutesRepository _repo;

  GetRouteTypesUsecase(this._repo);
  @override
  Future<Either<Failure, List<RouteTypeEntity>>> call(NoParams params) {
    return _repo.getRouteTypes();
  }
}