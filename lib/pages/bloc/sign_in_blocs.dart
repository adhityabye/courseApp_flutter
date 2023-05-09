import 'package:course_app/pages/bloc/sign_in_events.dart';
import 'package:course_app/pages/bloc/sign_in_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc() : super(const SignInState()) {
    //state class
    on<EmailEvent>(_emailEvent);
    on<PasswordEvent>(_passwordEvent);
  }

  //event handler
  void _emailEvent(EmailEvent event, Emitter<SignInState> emit) {
    print("my email is ${event.email}");
    emit(state.copyWith(email: event.email));
  }

  //event handler
  void _passwordEvent(PasswordEvent event, Emitter<SignInState> emit) {
    print("my password is ${event.password}");
    emit(state.copyWith(password: event.password));
  }
}
