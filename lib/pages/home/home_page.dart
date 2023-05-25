import 'package:course_app/pages/home/bloc/home_page_bloc.dart';
import 'package:course_app/pages/home/bloc/home_page_states.dart';
import 'package:course_app/pages/home/widgets/home_page_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common/values/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: buildAppBar(),
        body: BlocBuilder<HomePageBlocs, HomePageStates>(
            builder: (context, state) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: 0, horizontal: 25.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                homePageText(
                  "Hello",
                  color: AppColors.primaryThirdElementText,
                ),
                homePageText(
                  "Byeuu",
                  top: 5,
                ),
                SizedBox(height: 20.h),
                searchView(),
                slidersView(context, state),
                menuView(),
              ],
            ),
          );
        }));
  }
}
