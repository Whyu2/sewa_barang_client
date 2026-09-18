import 'package:injectable/injectable.dart';
import 'package:sewa_barang_client/core/config/flavors.dart';
import 'package:sewa_barang_client/core/models/product_model.dart';
import 'package:sewa_barang_client/core/network/dio_client.dart';
import 'package:sewa_barang_client/core/network/network.dart';

abstract class ProductDataSource extends BaseRemoteDataSource {
  ProductDataSource({
    required super.dio,
    required super.apiBaseUrl,
  });

  Future<ApiResult<ProductModel>> getProductByQr(String qrUuid);
}

@Singleton(as: ProductDataSource)
class ProductDataSourceImpl extends BaseRemoteDataSource
    implements ProductDataSource {
  ProductDataSourceImpl(DioClient dioClient)
      : super(
          dio: dioClient.dio,
          apiBaseUrl: FlavorConfig.instance!.flavorValues.baseUrl,
        );

  @override
  Future<ApiResult<ProductModel>> getProductByQr(String qrUuid) async {
    final response = await get(
      'product-by-qr',
      queryParameters: {'qr_uuid': qrUuid},
    );
    return ApiResult.fromResponse(
      response.data,
      (json) => ProductModel.fromJson(json),
    );
  }
}
