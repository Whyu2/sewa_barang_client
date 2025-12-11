import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:sewa_barang_client/core/config/flavors.dart';
import 'package:sewa_barang_client/core/network/dio_client.dart';
import 'package:sewa_barang_client/core/network/network.dart';
import '../models/rent_transaction_model.dart';

abstract class TransactionDataSource extends BaseRemoteDataSource {
  TransactionDataSource({
    required super.dio,
    required super.apiBaseUrl,
  });

  Future<ApiResult<ListResult<RentTransactionModel>>> getListTransaction();
  Future<ApiResult<RentTransactionModel>> getTransaction();
}

@Singleton(signalsReady: true, as: TransactionDataSource)
class TransactionDataSourceImpl extends BaseRemoteDataSource
    implements TransactionDataSource {
  TransactionDataSourceImpl()
      : super(
          dio: DioClient().dio,
          apiBaseUrl: FlavorConfig.instance!.flavorValues.baseUrl,
        );

  @override
  Future<ApiResult<ListResult<RentTransactionModel>>>
      getListTransaction() async {
    final response = await get(
      'rent-transactions',
    );
    debugPrint('movieTitle: $response');
    return ApiResult.fromResponseListResult(
      response.data,
      (json) => RentTransactionModel.fromJson(json),
    );
  }

  @override
  Future<ApiResult<RentTransactionModel>> getTransaction() async {
    final response = await get(
      'rent-transactions',
    );
    return ApiResult.fromResponse(
      response.data,
      (json) => RentTransactionModel.fromJson(json),
    );
  }
}
