import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:myapp/src/api_services/app_error.dart';

abstract class ApiServices {
  //Metodo para el get
  Future<Map<String, dynamic>> getDataFromGetRequest(
      {required String url, Map<String, String>? headers});
  //Metodo para el post
  Future<Map<String, dynamic>> getDataFromPostRequest(
      {required String url,
      required Map<String, dynamic> bodyParams,
      Map<String, String>? headers});
  //Metodo para el put
  Future<Map<String, dynamic>> getDataFromPutRequest(
      {required String url,
      required Map<String, dynamic> bodyParams,
      Map<String, String>? headers});
}

class DefaultApiService extends ApiServices {
  @override
  Future<Map<String, dynamic>> getDataFromGetRequest(
      {required String url, Map<String, String>? headers}) async {
    final _url = Uri.parse(url);
    final response = await http.get(_url, headers: headers);
    try {
      if (response.statusCode.toString().contains('20')) {
        //significa que se hizo bien la consulta
        final jsonData = jsonDecode(response.body);
        return jsonData;
        //json decode es una herramienta que traen los lenguajes para mapear la data que trae la base de datos
      } else {
        //Significa que hubo un error
        throw Failure.fromBody(body: response.body);
      }
    } on SocketException {
      throw Failure.fromMessage(message: "No Internet Connection");
    } on HttpException {
      throw Failure.fromMessage(message: "Couldn't find the path");
    } on FormatException {
      throw Failure.fromMessage(message: "Bad Response Format");
    }
  }

  @override
  Future<Map<String, dynamic>> getDataFromPostRequest(
      {required String url,
      required Map<String, dynamic> bodyParams,
      Map<String, String>? headers}) async {
    final _url = Uri.parse(url);
    final body = jsonEncode(bodyParams);
    final response = await http.post(_url, body: body, headers: headers);
    try {
      if (response.statusCode.toString().contains('20')) {
        //significa que se hizo bien la consulta
        final jsonData = jsonDecode(response.body);
        return jsonData;
        //json decode es una herramienta que traen los lenguajes para mapear la data que trae la base de datos
      } else {
        //Significa que hubo un error
        throw Failure.fromBody(body: response.body);
      }
    } on SocketException {
      throw Failure.fromMessage(message: "No Internet Connection");
    } on HttpException {
      throw Failure.fromMessage(message: "Couldn't find the path");
    } on FormatException {
      throw Failure.fromMessage(message: "Bad Response Format");
    }
  }

  @override
  Future<Map<String, dynamic>> getDataFromPutRequest(
      {required String url,
      required Map<String, dynamic> bodyParams,
      Map<String, String>? headers}) async {
    final _url = Uri.parse(url);
    final body = jsonEncode(bodyParams);
    final response = await http.put(_url, body: body, headers: headers);
    try {
      if (response.statusCode.toString().contains('20')) {
        //significa que se hizo bien la consulta
        final jsonData = jsonDecode(response.body);
        return jsonData;
        //json decode es una herramienta que traen los lenguajes para mapear la data que trae la base de datos
      } else {
        //Significa que hubo un error
        throw Failure.fromBody(body: response.body);
      }
    } on SocketException {
      throw Failure.fromMessage(message: "No Internet Connection");
    } on HttpException {
      throw Failure.fromMessage(message: "Couldn't find the path");
    } on FormatException {
      throw Failure.fromMessage(message: "Bad Response Format");
    }
  }
}
