import 'package:injectable/injectable.dart';
import 'package:sewa_barang_client/core/config/flavors.dart';
import 'package:sewa_barang_client/core/network/dio_client.dart';
import 'package:sewa_barang_client/core/network/network.dart';
import 'package:sewa_barang_client/features/auth/data/models/auth_model.dart';
import 'package:sewa_barang_client/features/auth/data/models/user_model.dart';

abstract class AuthDataSource extends BaseRemoteDataSource {
  AuthDataSource({
    required super.dio,
    required super.apiBaseUrl,
  });

  Future<ApiResult<AuthModel>> submitLogin(String email, String password);
  Future<ApiResult<UserModel?>> check();
}

@Singleton(as: AuthDataSource)
class AuthDataSourceImpl extends BaseRemoteDataSource
    implements AuthDataSource {
  AuthDataSourceImpl(
    DioClient dioClient,
  ) : super(
          dio: dioClient.dio,
          apiBaseUrl: FlavorConfig.instance!.flavorValues.baseUrl,
        );

  @override
  Future<ApiResult<AuthModel>> submitLogin(
      String email, String password) async {
    final response = await post(
      'login',
      data: {
        'email': email,
        'password': password,
      },
    );
    return ApiResult.fromResponse(
      response.data,
      (json) => AuthModel.fromJson(json),
    );
  }

  @override
  Future<ApiResult<UserModel?>> check() async {
    final response = await get(
      'me',
    );
    return ApiResult.fromResponse(
      response.data,
      (json) => UserModel?.fromJson(json),
    );
  }
}
