// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:localization_with_getx/home.dart';
import 'package:localization_with_getx/languages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: Languages(),
      // locale: Get.deviceLocale,
      locale: Locale('en', 'US'),
      fallbackLocale: Locale('en', 'US'),
      home: Home(),
    );
  }
}