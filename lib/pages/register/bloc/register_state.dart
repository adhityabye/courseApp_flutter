class RegisterState {
  //make the immuatble variable, so that it can't be changed after the object is created
  final String userName;
  final String email;
  final String password;
  final String rePassword;

  //create anoptional named parameter constructor
  const RegisterState(
      {this.email = "",
      this.password = "",
      this.rePassword = "",
      this.userName = ""});

  RegisterState copyWith({
    String? userName,
    String? email,
    String? password,
    String? rePassword,
  }) {
    return RegisterState(
        userName: userName ?? this.userName,
        email: email ?? this.email,
        password: password ?? this.password,
        rePassword: rePassword ?? this.rePassword);
  }
}
