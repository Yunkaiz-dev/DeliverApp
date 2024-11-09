import 'package:myapp/src/services/auth_firebase_services/auth_firebase_interface.dart';

class DefaultSignUpService extends SignUpService {
  @override
  Future<Map<String, dynamic>> signUp(
      {required Map<String, dynamic> bodyParams}) {
    return apiService.getDataFromPostRequest(
        url: endPoint, bodyParams: bodyParams);
  }
}
