abstract class BaseRealTimeDataBaseService {
  String baseUrl = "https://deliver-app-a23a0-default-rtdb.firebaseio.com/";
  String endUrl = ".json";
}

abstract class RealTimeDataBaseService extends BaseRealTimeDataBaseService {
  Future<Map<String, dynamic>> postData(
      {required Map<String, dynamic> bodyParams, required String path});

  Future<Map<String, dynamic>> putData(
      {required Map<String, dynamic> bodyParams, required String path});

  Future<Map<String, dynamic>> getData({required String path});
}
