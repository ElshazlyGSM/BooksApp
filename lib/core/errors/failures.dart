import 'package:dio/dio.dart';

abstract class Failure {}

class ServerFailure extends Failure {
  ServerFailure( this.dio);

  final _baseUrl = 'https://www.googleapis.com/books/v1/';
  final Dio dio;

  Future<Map<String, dynamic>> get(String endPoint) async {
    var response = await dio.get('$_baseUrl$endPoint');
    return response.data;
  }
}
