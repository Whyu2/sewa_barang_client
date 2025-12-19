import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sewa_barang_client/core/storage/scure_storage_service.dart';
import 'package:sewa_barang_client/features/auth/data/models/auth_model.dart';
import 'package:sewa_barang_client/features/auth/data/models/user_model.dart';
import 'package:sewa_barang_client/features/auth/data/repositories/auth_repository.dart';

part 'auth_cubit.freezed.dart';
part 'auth_state.dart';

@singleton
class AuthCubbit extends Cubit<AuthState> {
  final AuthRepository _repo;
  final SecureStorageService _storageService;

  AuthCubbit(this._repo, this._storageService) : super(const AuthState());

  Future<void> checkAuth() async {
    final token = await _storageService.getToken();

    if (token == null) {
      emit(
        state.copyWith(
          data: null,
          status: AuthStatus.unAuthenticated,
        ),
      );
      return;
    }

    try {
      final data = await _repo.check();

      emit(
        state.copyWith(
          data: data,
          status: AuthStatus.authenticated,
        ),
      );
    } catch (e) {
      await _storageService.deleteToken();

      emit(
        state.copyWith(
          data: null,
          status: AuthStatus.unAuthenticated,
        ),
      );
    }
  }

  void authenticated(
    AuthModel authModel,
  ) {
    emit(
      state.copyWith(
        data: authModel.user,
        status: AuthStatus.authenticated,
      ),
    );
  }

  Future<void> unAuthenticated() async {
    await _storageService.deleteToken();
    emit(
      state.copyWith(
        data: null,
        status: AuthStatus.unAuthenticated,
      ),
    );
  }
}
