import 'package:myapp/src/api_services/api_services.dart';

abstract class BaseFirebaseService {
  static String baseUrl = "https://identitytoolkit.googleapis.com/v1/";
  static String adminToken = "AIzaSyAjIf7qnbGLxfdrjWA77ldpOz_r77NV1tY";
  static String SignUpEndPoint = "accounts:signUp?key=";
  static String SignInEndPoint = "accounts:signInWithPassword?key=";

  ApiServices apiService = DefaultApiService();
}

abstract class SignUpService extends BaseFirebaseService {
  String endPoint = BaseFirebaseService.baseUrl +
      BaseFirebaseService.SignUpEndPoint +
      BaseFirebaseService.adminToken;
  Future<Map<String, dynamic>> signUp(
      {required Map<String, dynamic> bodyParams});
}

abstract class SignInService extends BaseFirebaseService {
  String endPoint = BaseFirebaseService.baseUrl +
      BaseFirebaseService.SignUpEndPoint +
      BaseFirebaseService.adminToken;
  Future<Map<String, dynamic>> signIn(
      {required Map<String, dynamic> bodyParams});
}
