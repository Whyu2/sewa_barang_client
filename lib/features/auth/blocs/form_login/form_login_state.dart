part of 'form_login_bloc.dart';

@freezed
class FormLoginState with _$FormLoginState {
  factory FormLoginState({
    @Default(StringForm.pure(isRequired: true)) StringForm email,
    @Default(StringForm.pure(isRequired: true)) StringForm password,
    @Default(FormzStatus.pure) FormzStatus formzStatus,
  }) = _FormLoginState;
}
