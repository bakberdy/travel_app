import 'package:dartz/dartz.dart';
import '../error/failures.dart';

/// Base use case for operations that return a single result
abstract class UseCase<T, Params> {
  Future<Either<Failure, T>> call(Params params);
}

/// Base use case for operations that return a stream of results
abstract class StreamUseCase<T, Params> {
  Stream<Either<Failure, T>> call(Params params);
}

/// Used when no parameters are needed
class NoParams {
  const NoParams();
}
