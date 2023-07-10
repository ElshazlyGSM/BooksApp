import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  const Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);


  factory ServerFailure.fromDioError(DioExceptionType dioExceptionType)
  {
    switch(dioExceptionType){
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailure('send timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('receive timeout with ApiServer');
      case DioExceptionType.badCertificate:
        return ServerFailure('Connection timeout with ApiServer');
      case DioExceptionType.badResponse:
        return ServerFailure('Connection timeout with ApiServer');
      case DioExceptionType.cancel:
        return ServerFailure('Connection timeout with ApiServer');
      case DioExceptionType.connectionError:
        return ServerFailure('Connection timeout with ApiServer');
      case DioExceptionType.unknown:
        return ServerFailure('Connection timeout with ApiServer');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response){
    if(statusCode == 400 || statusCode == 401 || statusCode == 403){
      return ServerFailure(response['error']['message']);
    }
    else if(statusCode == 404){
      return ServerFailure('Your request not found, please try later');
    }
    else if (statusCode == 500){
      return ServerFailure('Internet server error , please try later');
    }
   return ServerFailure('Opps There was an error , please try again');
  }
}
