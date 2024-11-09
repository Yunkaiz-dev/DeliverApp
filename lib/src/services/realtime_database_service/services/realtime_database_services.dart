import 'package:myapp/src/api_services/api_services.dart';
import 'package:myapp/src/api_services/app_error.dart';
import 'package:myapp/src/services/realtime_database_service/interfaces/interface.dart';

class DefaultRealTimeDataBaseService extends RealTimeDataBaseService {
  final ApiServices _apiServices;
  DefaultRealTimeDataBaseService({ApiServices? apiservices})
      : _apiServices = apiservices ?? DefaultApiService();

  @override
  Future<Map<String, dynamic>> getData({required String path}) async {
    final endPoint = baseUrl + path + endUrl;
    try {
      final result = await _apiServices.getDataFromGetRequest(url: endPoint);
      return result;
    } on Failure catch (e) {
      return e.error;
    }
  }

  @override
  Future<Map<String, dynamic>> postData(
      {required Map<String, dynamic> bodyParams, required String path}) async {
    final endPoint = baseUrl + path + endUrl;
    try {
      final result = await _apiServices.getDataFromPostRequest(url: endPoint, bodyParams: bodyParams);
      return result;
    } on Failure catch (e) {
      return e.error;
    }
  }

  @override
  Future<Map<String, dynamic>> putData(
      {required Map<String, dynamic> bodyParams, required String path}) async {
    final endPoint = baseUrl + path + endUrl;
    try {
      final result = await _apiServices.getDataFromPutRequest(url: endPoint, bodyParams: bodyParams);
      return result;
    } 
    on Failure catch (e) {
      return e.error;
    }
  }
}
