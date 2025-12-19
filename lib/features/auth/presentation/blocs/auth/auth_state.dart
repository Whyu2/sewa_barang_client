part of 'auth_cubit.dart';

enum AuthStatus { authenticated, unAuthenticated }

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    @Default(AuthStatus.authenticated) AuthStatus status,
    UserModel? data,
  }) = _AuthState;
}
