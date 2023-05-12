import 'package:course_app/pages/register/bloc/register_event.dart';
import 'package:course_app/pages/register/bloc/register_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterBlocs extends Bloc<RegisterEvent, RegisterState> {
  RegisterBlocs() : super(const RegisterState()) {
    on<UserNameEvent>(_userNameEvent);
    on<EmailEvent>(_emailEvent);
    on<PasswordEvent>(_passwordEvent);
    on<RePasswordEvent>(_rePasswordEvent);
  }

  void _userNameEvent(UserNameEvent event, Emitter<RegisterState> emit) {
    emit(state.copyWith(userName: event.userName));
  }

  void _emailEvent(EmailEvent event, Emitter<RegisterState> emit) {
    emit(state.copyWith(email: event.email));
  }

  void _passwordEvent(PasswordEvent event, Emitter<RegisterState> emit) {
    emit(state.copyWith(password: event.password));
  }

  void _rePasswordEvent(RePasswordEvent event, Emitter<RegisterState> emit) {
    emit(state.copyWith(rePassword: event.rePassword));
  }
}
