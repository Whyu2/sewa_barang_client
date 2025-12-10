import 'dart:io';

// import 'package:chucker_flutter/chucker_flutter.dart';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:valoku_app/core/config/flavors.dart';
import 'package:valoku_app/core/network/network.dart';

class DioClient {
  Function(
    String errorMsg,
    int? statusCode,
    DioExceptions? dioExceptions,
  )? _errorCallback;

  final Dio _httpDio = Dio(
    BaseOptions(
      baseUrl: FlavorConfig.instance!.flavorValues.baseUrl,
      contentType: 'application/json',
      receiveTimeout: const Duration(seconds: 30),
      connectTimeout: const Duration(seconds: 30),
      sendTimeout: const Duration(seconds: 30),
    ),
  );

  DioClient() {
    _httpDio.interceptors.add(interceptor());
    if (kDebugMode) {
      // _httpDio.interceptors.add(ChuckerDioInterceptor()); // enable if want show more detail log dio
      _httpDio.interceptors.add(
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseBody: true,
          responseHeader: true,
          error: true,
          compact: true,
          maxWidth: 90,
        ),
      );
    }
    // Allow bad certificate for Android <= 6.0.
    // See: https://stackoverflow.com/questions/54285172/how-to-solve-flutter-certificate-verify-failed-error-while-performing-a-post-req
    if (!kIsWeb) {
      (_httpDio.httpClientAdapter as IOHttpClientAdapter).createHttpClient =
          () =>
              HttpClient()..badCertificateCallback = (cert, host, port) => true;
    }
  }

  Dio get dio => _httpDio;

  InterceptorsWrapper interceptor() => InterceptorsWrapper(
        onRequest: (options, handler) async {
          return handler.next(options);
        },
        onResponse: (response, handler) {
          return handler.next(response);
        },
        onError: (err, handler) {
          String msg;
          DioExceptions? dioException;
          dioException = DioExceptions.fromDioError(err);
          msg = dioException.message.toString();
          if (_errorCallback != null) {
            // send error message to callback
            _errorCallback!(
              msg,
              err.response?.statusCode,
              dioException,
            );
          }

          return handler.next(err);
        },
      );
}
