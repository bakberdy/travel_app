import 'package:dartz/dartz.dart';
import '../error/failures.dart';
import '../error/exceptions.dart';

/// Base repository with common error handling
/// All repository implementations should extend this
abstract class BaseRepository {
  /// Handles repository operations and converts exceptions to failures
  /// 
  /// Example usage in repository:
  /// ```dart
  /// @override
  /// Future<Either<Failure, User>> getUser(String id) {
  ///   return handleOperation(() async {
  ///     final response = await _apiClient.get('/users/$id');
  ///     return UserDto.fromJson(response.data).toEntity();
  ///   });
  /// }
  /// ```
  Future<Either<Failure, T>> handleOperation<T>(
    Future<T> Function() operation,
  ) async {
    try {
      final result = await operation();
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(
        message: e.message,
        statusCode: e.code,
      ));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(
        message: e.message,
      ));
    } on TimeoutException catch (e) {
      return Left(TimeoutFailure(
        message: e.message,
      ));
    } on UnauthorizedException catch (e) {
      return Left(UnauthorizedFailure(
        message: e.message,
        statusCode: e.code,
      ));
    } on NotFoundException catch (e) {
      return Left(NotFoundFailure(
        message: e.message,
        statusCode: e.code,
      ));
    } on ForbiddenException catch (e) {
      return Left(PermissionFailure(
        message: e.message,
        statusCode: e.code,
      ));
    } on ValidationException catch (e) {
      return Left(ValidationFailure(
        message: e.message,
      ));
    } on ApiValidationException catch (e) {
      return Left(ValidationFailure(
        message: e.message,
        fieldErrors: e.errors as Map<String, String>?,
      ));
    } on BadRequestException catch (e) {
      return Left(ValidationFailure(
        message: e.message,
      ));
    } on CacheException catch (e) {
      return Left(CacheFailure(
        message: e.message,
      ));
    } catch (e) {
      return Left(UnexpectedFailure(
        message: e.toString(),
      ));
    }
  }
  
  /// Handles stream operations with error mapping
  /// 
  /// Example usage:
  /// ```dart
  /// @override
  /// Stream<Either<Failure, List<Item>>> watchItems() {
  ///   return handleStreamOperation(() {
  ///     return _firestore.collection('items').snapshots().map(
  ///       (snapshot) => snapshot.docs.map((doc) => ItemDto.fromDoc(doc).toEntity()).toList(),
  ///     );
  ///   });
  /// }
  /// ```
  Stream<Either<Failure, T>> handleStreamOperation<T>(
    Stream<T> Function() operation,
  ) async* {
    try {
      await for (final result in operation()) {
        yield Right(result);
      }
    } on ServerException catch (e) {
      yield Left(ServerFailure(
        message: e.message,
        statusCode: e.code,
      ));
    } on NetworkException catch (e) {
      yield Left(NetworkFailure(
        message: e.message,
      ));
    } on TimeoutException catch (e) {
      yield Left(TimeoutFailure(
        message: e.message,
      ));
    } catch (e) {
      yield Left(UnexpectedFailure(
        message: e.toString(),
      ));
    }
  }
}
