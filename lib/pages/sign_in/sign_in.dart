import 'package:course_app/pages/sign_in/widgets/sign_in_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: buildAppBar(),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildThirdPartyLogin(context),
                Center(
                    child: reusableText("Or use your emailaccount to login")),
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
                      reusableText("Email"),
                      // SizedBox(
                      //   height: 5.h,
                      // ),
                      buildTextField(
                          "Enter your email addres", "email", "user"),
                      reusableText("Password"),
                      // SizedBox(
                      //   height: 3.h,
                      // ),
                      buildTextField(
                          "Enter your email password", "password", "lock"),
                    ],
                  ),
                ),
                forgotPassword(),
                buildLogInAdnRegButton("Log in", "login"),
                buildLogInAdnRegButton("Register", "register"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
