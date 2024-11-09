import 'package:myapp/src/services/auth_firebase_services/auth_firebase_interface.dart';

class DefaultSignInService extends SignInService {
  @override
  Future<Map<String, dynamic>> signIn(
      {required Map<String, dynamic> bodyParams}) {
    return apiService.getDataFromPostRequest(
        url: endPoint, bodyParams: bodyParams);
  }
}
