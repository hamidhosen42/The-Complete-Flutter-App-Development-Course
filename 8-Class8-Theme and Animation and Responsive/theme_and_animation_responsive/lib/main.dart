// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:theme_and_animation/Animation/lotti_animation.dart';
import 'package:theme_and_animation/Theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(400, 926),
      builder: (_) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              brightness: Brightness.dark,
              textTheme: TextTheme(
                headline6: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                bodyText2: TextStyle(
                    fontSize: 30, color: Color.fromARGB(255, 227, 230, 233)),
              ),
              scaffoldBackgroundColor: Colors.white38,
              floatingActionButtonTheme: FloatingActionButtonThemeData(
                  backgroundColor: Colors.amber,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                  ))),
              elevatedButtonTheme: ElevatedButtonThemeData(
                  style: ElevatedButton.styleFrom(
                primary: Colors.green,
                elevation: 10,
              ))),
          // home: ThemePage(),
          home: AnimationPage(),
        );
      },
    );
  }
}
