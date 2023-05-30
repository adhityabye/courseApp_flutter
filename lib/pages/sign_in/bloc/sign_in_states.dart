class SignInState {
  final String email;
  final String password;

  const SignInState({this.email = "", this.password = ""});

  SignInState copyWith({String? email, String? password}) {
    return SignInState(
      //if it's not empty, use the signed value...if it's empty, use the previous value
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }
}
