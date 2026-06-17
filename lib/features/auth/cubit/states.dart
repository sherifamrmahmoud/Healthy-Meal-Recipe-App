
abstract class AuthState {}

//login
class LoginIntitalStates extends AuthState {}

class LoginLoadingStates extends AuthState {}

class LoginSuccessStates extends AuthState {
  final String message;
  LoginSuccessStates(this.message);
}

class LoginErrorStates extends AuthState {
  final String message;
  LoginErrorStates(this.message);
}

//signup
class SignUpIntitalStates extends AuthState {}

class SignUpLoadingStates extends AuthState {}

class SignUpSuccessStates extends AuthState {
  final String message;
  SignUpSuccessStates(this.message);
}

class SignUpErrorStates extends AuthState {
  final String message;
  SignUpErrorStates(this.message);
}
