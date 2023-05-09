import 'dart:html';

import 'package:course_app/pages/bloc/sign_in_blocs.dart';
import 'package:course_app/pages/bloc/sign_in_states.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInController {
  final BuildContext context;

  const SignInController({required this.context});

  Future<void> handleSignIn(String type) async {
    try {
      if (type == "email") {
        final state = context.read<SignInBloc>().state;
        String emailAddres = state.email;
        String password = state.password;
        if (emailAddres.isEmpty) {
          //
        }
        if (password.isEmpty) {
          //
        }
        try {
          final credential = await FirebaseAuth.instance
              .signInWithEmailAndPassword(
                  email: emailAddres, password: password);
          if (credential.user == null) {
            //
          }
          if (!credential.user!.emailVerified) {
            //
          }

          var user = credential.user;
          if (user != null) {
            //we got verified user from firebase
          } else {
            //we have error getting user from firebase
          }
        } catch (e) {
          //
        }
      }
    } catch (e) {}
  }
}
