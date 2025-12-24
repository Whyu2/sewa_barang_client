part of 'form_login_bloc.dart';

@freezed
class FormLoginEvent with _$FormLoginEvent {
  const factory FormLoginEvent.changeEmail({
    String? email,
  }) = _ChangeEmail;

  const factory FormLoginEvent.changePassword({
    String? password,
  }) = _ChangePassword;
}
