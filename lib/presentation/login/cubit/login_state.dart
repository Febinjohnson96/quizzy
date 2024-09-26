part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    String? email,
    String? password,
  }) = _LoginState;
  factory LoginState.initial() {
    return const LoginState(
      email: '',
      password: '',
    );
  }
}
