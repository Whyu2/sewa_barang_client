part of 'submit_login_bloc.dart';

enum SubmitLoginStatus {
  initial,
  loading,
  loaded;

  bool get isInitial => this == SubmitLoginStatus.initial;
  bool get isLoading => this == SubmitLoginStatus.loading;
  bool get isLoaded => this == SubmitLoginStatus.loaded;
}

@freezed
class SubmitLoginState with _$SubmitLoginState {
  const factory SubmitLoginState({
    @Default(SubmitLoginStatus.initial) SubmitLoginStatus status,
    AuthModel? data,
    Object? error,
  }) = _SubmitLoginState;
}
