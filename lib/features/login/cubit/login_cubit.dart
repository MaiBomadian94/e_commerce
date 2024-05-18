import 'package:e_commerce_app/core/failure/server_failure.dart';
import 'package:e_commerce_app/core/services/web_service.dart';
import 'package:e_commerce_app/data/data_source/login/login_data_source.dart';
import 'package:e_commerce_app/data/data_source/login/login_data_source_imp.dart';
import 'package:e_commerce_app/data/repository_imp/login_repository_imp.dart';
import 'package:e_commerce_app/domain/repository/login_repository.dart';
import 'package:e_commerce_app/features/login/cubit/login_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/use_cases/login_use_case.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(LoadingLoginState());
  late LoginUseCase loginUseCase;
  late LoginRepository loginRepository;
  late LoginDataSource loginDataSource;
  WebServices services = WebServices();

  Future<bool> login(String email, String password) async {
    emit(LoadingLoginState());
    loginUseCase = LoginUseCase(loginRepository);
    loginRepository = LoginRepositoryImplementation(loginDataSource);
    loginDataSource = LoginDataSourceImp(services.freeDio);
    final result = await loginUseCase.execute(email, password);
    return result.fold(
      (fail) {
        var error = fail as ServerFailure;
        emit(ErrorLoginState());

        return Future.value(false);
      },
      (data) {
        emit(SuccessLoginState());
        return Future.value(true);
      },
    );
  }
}
