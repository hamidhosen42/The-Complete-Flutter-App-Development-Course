// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'const/app_colors.dart';
import 'ui/route/route.dart';
import 'ui/views/splash/splash_screen.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 850),
      builder: (context) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: AppColors.cultured_background_color,
          textTheme: GoogleFonts.poppinsTextTheme(
            Theme.of(context).textTheme.apply(),
          ),
        ),
        home: SplashScreen(),
        initialRoute: splash,
        getPages: getPages,
      ),
    );
  }
}
