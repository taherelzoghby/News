// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;
  Failure({required this.errorMessage});
}

class ServerFailure extends Failure {
  ///constructor
  ServerFailure({
    required super.errorMessage,
  });

  ///factory constructor
  factory ServerFailure.fromDioError(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          dioException.response!.data,
        );
      case DioExceptionType.connectionTimeout:
        return ServerFailure(
          errorMessage: 'Connection timeout with ApiServer',
        );
      case DioExceptionType.cancel:
        return ServerFailure(
          errorMessage: 'Request to ApiServer was canceld',
        );
      case DioExceptionType.connectionError:
        return ServerFailure(
          errorMessage: 'Not connection!',
        );
      case DioExceptionType.receiveTimeout:
        return ServerFailure(
          errorMessage: 'Receive timeout with ApiServer',
        );
      case DioExceptionType.sendTimeout:
        return ServerFailure(
          errorMessage: 'Send timeout with ApiServer',
        );
      case DioExceptionType.unknown:
        if (dioException.message?.contains('SocketException') ?? true) {
          return ServerFailure(
            errorMessage: 'No Internet Connection',
          );
        }
        return ServerFailure(
          errorMessage: 'Unexpected Error, Please try again!',
        );
      default:
        return ServerFailure(
          errorMessage: 'Opps There was an Error, Please try again',
        );
    }
  }
  factory ServerFailure.fromResponse(dynamic response) {
    return ServerFailure(
      errorMessage: response['message'],
    );
  }
}
