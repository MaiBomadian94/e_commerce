import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/core/failure/failure.dart';
import 'package:e_commerce_app/domain/repository/login_repository.dart';

class LoginUseCase {
  final LoginRepository loginRepository;

  LoginUseCase(this.loginRepository);

  Future<Either<Failure, bool>> execute(String email, String password) {
    return loginRepository.login(email, password);
  }
}
