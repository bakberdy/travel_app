import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:travel_app/src/core/error/failures.dart';
import 'package:travel_app/src/core/error/failure_codes.dart';
import 'package:travel_app/src/core/usecases/usecase.dart';
import 'package:travel_app/src/features/routes/domain/entities/get_route_request_parameters_entity.dart';
import 'package:travel_app/src/features/routes/domain/entities/route_entity.dart';
import 'package:travel_app/src/features/routes/domain/repositories/routes_repository.dart';

@LazySingleton()
class GetRoutesUsecase
    extends UseCase<List<RouteEntity>, GetRouteRequestParametersEntity> {
  final RoutesRepository _repo;
  GetRoutesUsecase(this._repo);
  
  @override
  Future<Either<Failure, List<RouteEntity>>> call(
    GetRouteRequestParametersEntity params,
  ) async {
    // Validate parameters
    final validationResult = _validateParameters(params);
    if (validationResult != null) {
      return Left(validationResult);
    }
    
    return _repo.getRoutes(params: params);
  }
  
  Failure? _validateParameters(GetRouteRequestParametersEntity params) {
    // Validate minKm and maxKm
    if (params.minKm != null && params.maxKm != null) {
      if (params.minKm! > params.maxKm!) {
        return ValidationFailure(
          code: FailureCode.minKmGreaterThanMaxKm,
          message: 'Minimum kilometers cannot be greater than maximum kilometers',
          messageParams: {
            'minKm': params.minKm!.toString(),
            'maxKm': params.maxKm!.toString(),
          },
        );
      }
    }
    
    // Validate that values are not negative
    if (params.minKm != null && params.minKm! < 0) {
      return ValidationFailure(
        code: FailureCode.minKmNegative,
        message: 'Minimum kilometers cannot be negative',
        messageParams: {
          'minKm': params.minKm!.toString(),
        },
      );
    }
    
    if (params.maxKm != null && params.maxKm! < 0) {
      return ValidationFailure(
        code: FailureCode.maxKmNegative,
        message: 'Maximum kilometers cannot be negative',
        messageParams: {
          'maxKm': params.maxKm!.toString(),
        },
      );
    }
    
    return null;
  }
}
