import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar buildAppBar() {
  return AppBar(
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(1.0),
      child: Container(
        color: Colors.grey.withOpacity(0.5),
        height: 1.0,
      ),
    ),
    title: Text(
      "Log In",
      style: TextStyle(
        color: Colors.grey[800],
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}

//we need context to accessing bloc
Widget buildThirdPartyLogin(BuildContext context) {
  return Center(
    child: Container(
      margin: EdgeInsets.only(top: 40.h, bottom: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _reusableIcons("google"),
          _reusableIcons("apple"),
          _reusableIcons("facebook"),
        ],
      ),
    ),
  );
}

Widget _reusableIcons(String iconName) {
  return GestureDetector(
    onTap: () {},
    child: SizedBox(
      width: 40.w,
      height: 40.w,
      child: Image.asset("assets/icons/$iconName.png"),
    ),
  );
}

Widget reusableText(String text) {
  return Container(
    margin: EdgeInsets.only(
      bottom: 5.h,
    ),
    child: Text(text,
        style: TextStyle(
            color: Colors.black.withOpacity(0.6),
            fontWeight: FontWeight.normal,
            fontSize: 14.sp)),
  );
}

Widget buildTextField(String textType, String text) {
  return Container(
    width: 325.h,
    height: 50.h,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.w),
        border: Border.all(color: Colors.black)),
    child: Row(
      children: [
        Container(
          width: 16.w,
          height: 16.w,
          margin: EdgeInsets.only(left: 17.w),
          child: Image.asset("assets/icons/user.png"),
        ),
        Container(
          width: 270.w,
          height: 50.h,
          child: TextField(
            keyboardType: TextInputType.multiline,
            decoration: InputDecoration(
                hintText: "Enter your email addres",
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                ),
                disabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                ),
                hintStyle: TextStyle(
                  color: Colors.grey.withOpacity(0.5),
                )),
          ),
        ),
      ],
    ),
  );
}
