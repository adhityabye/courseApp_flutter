abstract class SignInEvent {
  SignInEvents();
}

class EmailEvent extends SignInEvent {
  final String email;
  EmailEvent(this.email);

  @override
  SignInEvents() {
    // TODO: implement SignInEvents
    throw UnimplementedError();
  }
}

class PasswordEvent extends SignInEvent {
  final String password;
  PasswordEvent(this.password);

  @override
  SignInEvents() {
    // TODO: implement SignInEvents
    throw UnimplementedError();
  }
}
