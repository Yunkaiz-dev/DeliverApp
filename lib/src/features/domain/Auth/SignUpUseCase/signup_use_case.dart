import 'package:myapp/src/api_services/app_error.dart';
import 'package:myapp/src/features/data/Repositories/Auth/signup_repository.dart';
import 'package:myapp/src/features/data/Repositories/Auth/signup_repository_parameters.dart';
import 'package:myapp/src/features/domain/Auth/SignUpUseCase/signup_use_case_repository_parameters.dart';
import 'package:myapp/src/features/domain/Entities/Auth/signup_entity.dart';
import 'package:myapp/src/features/domain/Interfaces/Interfaces';
import 'package:myapp/src/utils/helpers/result_type.dart';

abstract class SignupUseCase {
  Future<Result<SignUpEntity, Failure>> execute(
      {required SignupUseCaseRepositoryParameters params});
}

class DefaultSignUpUseCase extends SignupUseCase {
  SignUpRepository _signUpRepository;

  DefaultSignUpUseCase({SignUpRepository? signUpRepository})
      : _signUpRepository = signUpRepository ?? DefaultSignUpRepository();

  @override
  Future<Result<SignUpEntity, Failure>> execute(
      {required SignupUseCaseRepositoryParameters params}) {
    return _signUpRepository
        .signUp(
            parameters: SignUpRepositoryParameters(
                email: params.email, password: params.password))
        .then((value) {
      switch (value.status) {
        case ResultStatus.success:
          return Result.success(SignUpEntity.fromJson(value.value!.toJson()));
        case ResultStatus.error:
          return Result.failure(value.error!);
      }
    });
  }
}
