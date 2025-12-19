part of 'submit_login_bloc.dart';

@freezed
class SubmitLoginEvent with _$SubmitLoginEvent {
  const factory SubmitLoginEvent.submit(String email, String password) =
      _Submit;
}
