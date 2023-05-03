import 'package:course_app/app_events.dart';
import 'package:course_app/app_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:course_app/app_events.dart';

class AppBlocs extends Bloc<AppEvents, AppStates> {
  AppBlocs() : super(InitStates()) {
    on<Increments>((events, ask) {
      ask(AppStates(counter: state.counter + 1));
      print(state.counter);
    });

    on<Decrements>((events, ask) {
      ask(AppStates(counter: state.counter - 1));
      print(state.counter);
    });
  }
}
