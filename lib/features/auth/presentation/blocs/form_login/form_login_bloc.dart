import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sewa_barang_client/core/form/string_form.dart';

part 'form_login_event.dart';
part 'form_login_state.dart';
part 'form_login_bloc.freezed.dart';

@injectable
class FormLoginBloc extends Bloc<FormLoginEvent, FormLoginState> {
  FormLoginBloc() : super(FormLoginState()) {
    on<_ChangeEmail>(_changeEmail);
    on<_ChangePassword>(_changePassword);
  }

  FormzStatus _validateForm({
    StringForm? email,
    StringForm? password,
  }) {
    FormzStatus status = Formz.validate([
      email ?? state.email,
      password ?? state.password,
    ]);
    return status;
  }

  Future<void> _changeEmail(
    _ChangeEmail event,
    Emitter<FormLoginState> emit,
  ) async {
    final newForm = state.email.copyWith(
      value: event.email,
    );
    emit(
      state.copyWith(
        email: newForm,
        formzStatus: _validateForm(email: newForm),
      ),
    );
  }

  Future<void> _changePassword(
    _ChangePassword event,
    Emitter<FormLoginState> emit,
  ) async {
    final newForm = state.email.copyWith(
      value: event.password,
    );
    emit(
      state.copyWith(
        password: newForm,
        formzStatus: _validateForm(email: newForm),
      ),
    );
  }
}
