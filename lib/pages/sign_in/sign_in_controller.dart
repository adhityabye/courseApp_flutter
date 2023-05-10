import 'package:course_app/common/widgets/flutter_toast.dart';
import 'package:course_app/pages/sign_in/bloc/sign_in_blocs.dart';
import 'package:course_app/pages/sign_in/bloc/sign_in_states.dart';
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
          toastInfo(msg: "You need to fiil email addres");
        }
        if (password.isEmpty) {
          //
          toastInfo(msg: "You need to fiil password");
        }
        try {
          final credential = await FirebaseAuth.instance
              .signInWithEmailAndPassword(
                  email: emailAddres, password: password);
          if (credential.user == null) {
            //
            toastInfo(msg: "You don't exist");
          }
          if (!credential.user!.emailVerified) {
            //
            toastInfo(msg: "You need to verify your email addres");
          }

          var user = credential.user;
          if (user != null) {
            //we got verified user from firebase
            print("user exist");
          } else {
            //we have error getting user from firebase
            toastInfo(msg: "You not a user of this app");
          }
        } on FirebaseAuthException catch (e) {
          if (e.code == "user-not-found") {
            toastInfo(msg: "No user for that email");
          } else if (e.code == "wrong-password") {
            toastInfo(msg: "Wrong password for that user");
          } else if (e.code == "invalid-email") {
            toastInfo(msg: "Your email addres format is wrong");
          }
        }
      }
    } catch (e) {
      //
    }
  }
}
