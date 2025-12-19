// ignore_for_file: deprecated_member_use

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:sewa_barang_client/core/network/network.dart';

class BaseRemoteDataSource {
  Dio dio;
  String apiBaseUrl;
  BaseRemoteDataSource({
    required this.dio,
    required this.apiBaseUrl,
  });

  /// Get Endpoint
  @protected
  Future<Response<T>> get<T>(
    String path, {
    Map<String, dynamic>? queryParams,
    Options? options,
    CancelToken? cancelToken,
    void Function(int, int)? onReceiveProgress,
  }) async {
    late Response<T> response;
    try {
      response = await dio.get(
        _getUrl(path),
        queryParameters: queryParams,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );
    } on DioError catch (err, stack) {
      throw DioExceptions.fromDioError(err, stack);
    } catch (err) {
      rethrow;
    }

    return response;
  }

  @protected
  Future<Response<T>> post<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParams,
    Options? options,
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
  }) async {
    late Response<T> response;
    try {
      response = await dio.post(
        _getUrl(path),
        data: data,
        queryParameters: queryParams,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
        onSendProgress: onSendProgress,
      );
    } on DioError catch (err, stack) {
      throw DioExceptions.fromDioError(err, stack);
    } catch (err) {
      rethrow;
    }

    return response;
  }

  @protected
  String _getUrl(String path) {
    return '/$path';
  }
}
