import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:sewa_barang_client/core/config/flavors.dart';
import 'package:sewa_barang_client/core/network/dio_client.dart';
import 'package:sewa_barang_client/core/network/network.dart';
import '../models/rent_transaction_model.dart';
import '../models/dashboard_stats_model.dart';
import '../models/dashboard_tables.dart';
import '../models/name_description_model.dart';
import '../models/transaction_log_model.dart';

abstract class TransactionDataSource extends BaseRemoteDataSource {
  TransactionDataSource({
    required super.dio,
    required super.apiBaseUrl,
  });

  Future<ApiResult<ListResult<RentTransactionModel>>> getListTransaction(
      {bool mine = false});
  Future<ApiResult<RentTransactionModel>> getTransaction(int id);
  Future<ApiResult<RentTransactionModel>> createTransaction(FormData data);
  Future<ApiResult<RentTransactionModel>> returnTransaction(
      int id, FormData data);
  Future<ApiResult<DashboardStatsModel>> getDashboardStats({bool mine = false});
  Future<ApiResult<DashboardTables>> getDashboardTables({bool mine = false});
  Future<ApiResult<ListResult<NameDescriptionModel>>> getRegions();
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
  Future<ApiResult<ListResult<RentTransactionModel>>> getListTransaction(
      {bool mine = false}) async {
    final response = await get('rent-transactions',
        queryParameters: mine ? {'mine': 1} : null);
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
  Future<ApiResult<DashboardStatsModel>> getDashboardStats(
      {bool mine = false}) async {
    final response = await get('dashboard-stats',
        queryParameters: mine ? {'mine': 1} : null);
    return ApiResult.fromResponse(
        response.data, (json) => DashboardStatsModel.fromJson(json));
  }

  @override
  Future<ApiResult<DashboardTables>> getDashboardTables(
      {bool mine = false}) async {
    final response = await get('dashboard-tables',
        queryParameters: mine ? {'mine': 1} : null);
    return ApiResult.fromResponse(
        response.data, (json) => DashboardTables.fromJson(json));
  }

  @override
  Future<ApiResult<ListResult<NameDescriptionModel>>> getRegions() async {
    final response = await get('regions');
    final raw = response.data;
    final list = raw['data'] is List ? raw['data'] : [];
    return ApiResult.fromResponseListResult(
        {'status': raw['status'], 'data': list},
        (json) => NameDescriptionModel.fromJson(json));
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
