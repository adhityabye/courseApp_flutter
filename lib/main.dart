import 'package:course_app/pages/application/application_page.dart';
import 'package:course_app/pages/sign_in/bloc/sign_in_blocs.dart';
import 'package:course_app/pages/bloc_provider.dart';
import 'package:course_app/pages/register/register.dart';
import 'package:course_app/pages/sign_in/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:firebase_core/firebase_core.dart';
import 'common/routes/routes.dart';
import 'common/values/colors.dart';
import 'global.dart';

Future<void> main() async {
  await Global.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [...AppPages.allBlocProviders(context)],
        child: ScreenUtilInit(
            designSize: const Size(375, 812),
            builder: (context, child) => MaterialApp(
                  debugShowCheckedModeBanner: false,
                  theme: ThemeData(
                      appBarTheme: const AppBarTheme(
                          iconTheme:
                              IconThemeData(color: AppColors.primaryText),
                          elevation: 0,
                          backgroundColor: Colors.white,
                          centerTitle: true)),
                  onGenerateRoute: AppPages.GenerateRouteSettings,
                )));
  }
}

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         // appBar: AppBar(
//         //   title: const Text("Flutter Demo Home Page"),
//         // ),
//         body: Center(
//             child: BlocBuilder<AppBlocs, AppStates>(builder: (context, state) {
//           return Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               const Text(
//                 'You have pushed the button this many times:',
//               ),
//               Text(
//                 "${BlocProvider.of<AppBlocs>(context).state.counter}",
//                 style: Theme.of(context).textTheme.headlineMedium,
//               ),
//             ],
//           );
//         })),
//         floatingActionButton: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             FloatingActionButton(
//               heroTag: "heroTag1",
//               onPressed: () =>
//                   BlocProvider.of<AppBlocs>(context).add(Increments()),
//               tooltip: 'Increment',
//               child: const Icon(Icons.add),
//             ),
//             FloatingActionButton(
//               heroTag: "heroTag2",
//               onPressed: () =>
//                   BlocProvider.of<AppBlocs>(context).add(Decrements()),
//               tooltip: 'Decrement',
//               child: const Icon(Icons.remove),
//             ),
//           ],
//         ) // This trailing comma makes auto-formatting nicer for build methods.
//         );
//   }
// }
