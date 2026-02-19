import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sewa_barang_client/core/storage/scure_storage_service.dart';
import 'package:sewa_barang_client/core/models/auth_model.dart';
import 'package:sewa_barang_client/core/repositories/auth_repository.dart';

part 'submit_login_event.dart';
part 'submit_login_state.dart';

part 'submit_login_bloc.freezed.dart';

class SubmitLoginBloc extends Bloc<SubmitLoginEvent, SubmitLoginState> {
  final AuthRepository _repo;
  final SecureStorageService _storageService;

  SubmitLoginBloc(this._repo, this._storageService)
      : super(const SubmitLoginState()) {
    on<_Submit>(_submit);
  }

  Future<void> _submit(
    _Submit event,
    Emitter<SubmitLoginState> emit,
  ) async {
    emit(
      state.copyWith(
        status: SubmitLoginStatus.loading,
      ),
    );
    try {
      final data = await _repo.submitLogin(event.email, event.password);
      await _storageService.saveToken(data.token);
      emit(
        state.copyWith(status: SubmitLoginStatus.loaded, data: data),
      );
    } catch (err) {
      emit(
        state.copyWith(status: SubmitLoginStatus.loaded, error: err),
      );
    }
  }
}
