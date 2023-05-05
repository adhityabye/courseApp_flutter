import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'bloc/welcome_blocs.dart';
import 'bloc/welcome_events.dart';
import 'bloc/welcome_states.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  PageController pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Scaffold(body: BlocBuilder<WelcomeBloc, WelcomeState>(
        builder: (context, state) {
          return Container(
            margin: EdgeInsets.only(top: 50.h),
            width: 375.w,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                PageView(
                  controller: pageController,
                  onPageChanged: (index) {
                    state.page = index;
                    BlocProvider.of<WelcomeBloc>(context).add(WelcomeEvent());
                  },
                  children: [
                    _page(
                      1,
                      context,
                      "Next",
                      "First See Learning",
                      "Forget about a for for paper all knowledge in one learning",
                      "assets/images/reading.png",
                    ),
                    _page(
                      2,
                      context,
                      "Next",
                      "Connect with everyone",
                      "Always keep in touch with your tutor & firend. Let's join us",
                      "assets/images/boy.png",
                    ),
                    _page(
                      3,
                      context,
                      "Get Started",
                      "Always Fascinated Learning",
                      "Anywhere, anytime. The time is at our direction so study whenever you want",
                      "assets/images/man.png",
                    ),
                  ],
                ),
                Positioned(
                    bottom: 100.h,
                    child: DotsIndicator(
                      position: state.page.toDouble(),
                      dotsCount: 3,
                      mainAxisAlignment: MainAxisAlignment.center,
                      decorator: DotsDecorator(
                          color: Colors.grey,
                          activeColor: Colors.blue,
                          size: const Size.square(8.0),
                          activeSize: const Size(18.0, 8.0),
                          activeShape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0))),
                    )),
              ],
            ),
          );
        },
      )),
    );
  }

  Widget _page(int index, BuildContext context, String buttonName, String title,
      String subTitle, String imagePath) {
    return Column(
      children: [
        SizedBox(
          width: 345.w,
          height: 345.w,
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          child: Text(title,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 24.sp,
                  fontWeight: FontWeight.normal)),
        ),
        Container(
          width: 375.w,
          padding: EdgeInsets.only(left: 30.w, right: 30.w),
          child: Text(subTitle,
              style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.normal)),
        ),
        GestureDetector(
          onTap: () {
            if (index < 3) {
              //animation
              pageController.animateToPage(index,
                  duration: Duration(milliseconds: 500),
                  curve: Curves.easeInOut);
            } else {}
          },
          child: Container(
            margin: EdgeInsets.only(top: 100.h, left: 25.w, right: 25.w),
            width: 325.w,
            height: 50.h,
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(15.w),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: Offset(0, 5),
                  )
                ]),
            child: Center(
              child: Text(buttonName,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.normal)),
            ),
          ),
        ),
      ],
    );
  }
}
