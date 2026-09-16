import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:sewa_barang_client/core/config/flavors.dart';
import 'package:sewa_barang_client/core/network/dio_client.dart';
import 'package:sewa_barang_client/core/network/network.dart';
import '../models/rent_transaction_model.dart';
import '../models/transaction_log_model.dart';

abstract class TransactionDataSource extends BaseRemoteDataSource {
  TransactionDataSource({
    required super.dio,
    required super.apiBaseUrl,
  });

  Future<ApiResult<ListResult<RentTransactionModel>>> getListTransaction();
  Future<ApiResult<RentTransactionModel>> getTransaction(int id);
  Future<ApiResult<RentTransactionModel>> createTransaction(FormData data);
  Future<ApiResult<RentTransactionModel>> returnTransaction(
      int id, FormData data);
  Future<ApiResult<ListResult<TransactionLogModel>>> getLogs(
      {int? transactionId});
}

@Singleton(as: TransactionDataSource)
class TransactionDataSourceImpl extends BaseRemoteDataSource
    implements TransactionDataSource {
  TransactionDataSourceImpl(DioClient dioClient)
      : super(
          dio: dioClient.dio,
          apiBaseUrl: FlavorConfig.instance!.flavorValues.baseUrl,
        );

  @override
  Future<ApiResult<ListResult<RentTransactionModel>>>
      getListTransaction() async {
    final response = await get('rent-transactions');
    debugPrint('getListTransaction: $response');
    return ApiResult.fromResponseListResult(
      response.data,
      (json) => RentTransactionModel.fromJson(json),
    );
  }

  @override
  Future<ApiResult<RentTransactionModel>> getTransaction(int id) async {
    final response = await get('rent-transaction/$id');
    return ApiResult.fromResponse(
      response.data,
      (json) => RentTransactionModel.fromJson(json),
    );
  }

  @override
  Future<ApiResult<RentTransactionModel>> createTransaction(
      FormData data) async {
    final response = await post('rent-transaction', data: data);
    return ApiResult.fromResponse(
        response.data, (json) => RentTransactionModel.fromJson(json));
  }

  @override
  Future<ApiResult<RentTransactionModel>> returnTransaction(
      int id, FormData data) async {
    data.fields.add(const MapEntry('_method', 'PUT'));
    final response = await post('rent-transaction/$id',
        data: data,
        options: Options(headers: {'Content-Type': 'multipart/form-data'}));
    return ApiResult.fromResponse(
        response.data, (json) => RentTransactionModel.fromJson(json));
  }

  @override
  Future<ApiResult<ListResult<TransactionLogModel>>> getLogs(
      {int? transactionId}) async {
    final response = await get('transaction-logs-paginated',
        queryParameters: transactionId != null
            ? {'transaction_id': transactionId, 'limit': 100}
            : {'limit': 100});
    final raw = response.data;
    final list =
        raw['data'] is Map ? raw['data']['data'] ?? raw['data'] : raw['data'];
    return ApiResult.fromResponseListResult(
        {'status': raw['status'], 'data': list},
        (json) => TransactionLogModel.fromJson(json));
  }
}
