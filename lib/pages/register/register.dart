import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../sign_in/bloc/sign_in_blocs.dart';
import '../sign_in/bloc/sign_in_events.dart';
import '../sign_in/sign_in_controller.dart';
import '../sign_in/widgets/sign_in_widget.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: buildAppBar("Register"),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20.h,
                ),
                Center(
                    child: reusableText(
                        "Enter your details below & free to sign up")),
                Container(
                  margin: EdgeInsets.only(
                    top: 36.h,
                  ),
                  padding: EdgeInsets.only(
                    left: 25.w,
                    right: 25.w,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //username section
                      reusableText("Username"),
                      buildTextField("Enter your username", "name", "user",
                          (value) {
                        // context.read<SignInBloc>().add(EmailEvent(value));
                      }),

                      //email section
                      reusableText("Email"),
                      buildTextField("Enter your email addres", "email", "user",
                          (value) {
                        // context.read<SignInBloc>().add(EmailEvent(value));
                      }),

                      //password section
                      reusableText("Password"),
                      buildTextField(
                          "Enter your email password", "password", "lock",
                          (value) {
                        // context.read<SignInBloc>().add(PasswordEvent(value));
                      }),

                      //re-connfirm password section
                      reusableText("Confirm your password"),
                      buildTextField(
                          "Enter your email password", "password", "lock",
                          (value) {
                        // context.read<SignInBloc>().add(PasswordEvent(value));
                      }),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 25.h,
                  ),
                  child: reusableText(
                      "Enter your details below and free to sign up"),
                ),
                buildLogInAdnRegButton("Sign Up", "login", () {
                  Navigator.of(context).pushNamed("register");
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
