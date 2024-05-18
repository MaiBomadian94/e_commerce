import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:e_commerce_app/core/failure/failure.dart';
import 'package:e_commerce_app/data/data_source/login/login_data_source.dart';

import '../../core/failure/server_failure.dart';
import '../../domain/repository/login_repository.dart';

class LoginRepositoryImplementation extends LoginRepository {
  final LoginDataSource loginDataSource;

  LoginRepositoryImplementation(this.loginDataSource);

  @override
  Future<Either<Failure, bool>> login(String email, String password) async {
    try {
      final response = await loginDataSource.login(email, password);
      if (response.statusCode == 200) {
        return const Right(true);
      } else if (response.statusCode == 401) {
        return Left(
          ServerFailure(
            statusCode: response.statusCode.toString(),
            message: response.data['message'],
          ),
        );
      } else {
        return Left(
          ServerFailure(
            statusCode: response.statusCode.toString(),
            message: response.data['message'],
          ),
        );
      }
    } on DioException catch (dioException) {
      return left(
        ServerFailure(
          statusCode: dioException.response?.statusCode.toString() ?? '',
          message: dioException.response?.statusCode.toString() ?? '',
        ),
      );
    }
  }
}
