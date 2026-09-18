// ignore_for_file: deprecated_member_use

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../data_sources/product_data_source.dart';
import '../models/product_model.dart';

@injectable
class ProductRepository {
  final ProductDataSource _remoteDataSource;
  ProductRepository(this._remoteDataSource);

  Future<ProductModel> getProductByQrFromRemote(String qrUuid) async {
    try {
      final response = await _remoteDataSource.getProductByQr(qrUuid);
      return response.data!;
    } on DioError catch (err) {
      throw err.toString();
    }
  }
}
