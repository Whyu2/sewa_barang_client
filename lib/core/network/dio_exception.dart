import 'package:dio/dio.dart';

// ignore_for_file: deprecated_member_use
class DioExceptions implements Exception {
  late String message;
  int? statusCode;
  StackTrace? stackTrace;

  DioExceptions(this.message, [this.statusCode, this.stackTrace]);

  DioExceptions.fromDioError(DioError dioError, [this.stackTrace]) {
    statusCode = dioError.response?.statusCode;

    switch (dioError.type) {
      case DioErrorType.connectionTimeout:
        message = 'Connection timeout with API server';
      case DioErrorType.receiveTimeout:
        message = 'Receive timeout in connection with API server';
      case DioErrorType.badResponse:
        message = _handleError(
          dioError.response?.statusCode,
          dioError.response?.data,
        );
      case DioErrorType.sendTimeout:
        message = 'Send timeout in connection with API server';
      case DioErrorType.connectionError:
        if (dioError.message!.contains('SocketException')) {
          message = 'No Internet';
          break;
        }
        message = 'Unexpected error occurred';
      default:
        message = 'Something went wrong';
        break;
    }
  }

  String _handleError(int? statusCode, dynamic error) {
    if (error is Map<String, dynamic>) {
      if (error.containsKey('message')) {
        return error['message'];
      }
    }
    switch (statusCode) {
      case 400:
        return 'Bad request | ${error['message']}';
      case 401:
        return 'Unauthorized | ${error['message']}';
      case 403:
        return 'Forbidden | ${error['message']}';
      case 404:
        return 'Not found | ${error['message']}';
      default:
        return 'Oops something went wrong | ${error['message']}';
    }
  }

  @override
  String toString() => message;

  String get errorMessage {
    final split = message.split(' | ');
    if (split.length > 1) {
      return split.last;
    }
    return message;
  }
}
