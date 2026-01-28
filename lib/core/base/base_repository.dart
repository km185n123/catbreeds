import 'package:catbreeds/core/error/failure.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

abstract class BaseRepository {
  Future<Either<Failure, T>> performRequest<T>(
    Future<T> Function() request,
  ) async {
    try {
      final result = await request();
      return Right(result);
    } catch (e) {
      if (e is DioException) {
        if (e.type == DioExceptionType.connectionTimeout ||
            e.type == DioExceptionType.receiveTimeout ||
            e.type == DioExceptionType.connectionError) {
          return const Left(
            ConnectionFailure(
              'No internet connection. Please check your network settings.',
            ),
          );
        } else if (e.type == DioExceptionType.badResponse) {
          return const Left(
            ServerFailure(
              'Server is currently unavailable. Please try again later.',
            ),
          );
        }
      }
      return Left(ServerFailure(e.toString()));
    }
  }
}
