import 'package:myapp/src/api_services/app_error.dart';
import 'package:myapp/src/features/domain/Interfaces/Interfaces';
import 'package:myapp/src/services/auth_firebase_services/auth_firebase_interface.dart';
import 'package:myapp/src/services/auth_firebase_services/decodables/signup_decodable.dart';
import 'package:myapp/src/services/auth_firebase_services/signup_auth_service.dart';
import 'package:myapp/src/utils/helpers/result_type.dart';
import 'package:myapp/src/features/data/Repositories/Auth/signup_repository_parameters.dart';

class DefaultSignUpRepository extends SignUpRepository {
  SignUpService _signUpService;

  DefaultSignUpRepository({SignUpService? signUpService})
      : _signUpService = signUpService ?? DefaultSignUpService();

  Future<Result<SignUpDecodable, Failure>> signUp(
      {required SignUpRepositoryParameters parameters}) async {
    try {
      final result =
          await _signUpService.signUp(bodyParams: parameters.ToMap());
      SignUpDecodable decodable = SignUpDecodable.fromJson(result);
      return Result.success(decodable);
    } on Failure catch (e) {
      return Result.failure(e);
    }
  }
  
  @override
  Future<Result<SignUpDecodable, Failure>> signup(parameters) {
    // TODO: implement signup
    throw UnimplementedError();
  }
}
