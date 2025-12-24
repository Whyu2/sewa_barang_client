// ignore_for_file: deprecated_member_use

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:sewa_barang_client/core/data_sources/auth_data_sources.dart';
import 'package:sewa_barang_client/core/models/auth_model.dart';
import 'package:sewa_barang_client/core/models/user_model.dart';

@injectable
class AuthRepository {
  final AuthDataSource _remoteDataSource;

  AuthRepository(this._remoteDataSource);

  Future<AuthModel> submitLogin(String email, String password) async {
    try {
      final response = await _remoteDataSource.submitLogin(email, password);
      AuthModel result = AuthModel.fromJson(response.data!.toJson());

      return result;
    } on DioError catch (err) {
      throw err.toString();
    } catch (_) {
      rethrow;
    }
  }

  Future<UserModel?> check() async {
    try {
      final response = await _remoteDataSource.check();
      UserModel? result = UserModel.fromJson(response.data!.toJson());
      return result;
    } on DioError catch (err) {
      throw err.toString();
    } catch (_) {
      rethrow;
    }
  }
}
