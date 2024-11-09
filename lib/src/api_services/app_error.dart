import 'dart:convert';

class Failure {
  String? message;
  Map<String, dynamic> error = {};

  Failure.fromMessage({String? message}) {
    this.message = message;
  }

  Failure.fromBody({required String body}) {
    final jsonData = jsonDecode(body);
    this.error = jsonData;
  }

  @override
  String toString() {
    return message ?? "";
  }
}
