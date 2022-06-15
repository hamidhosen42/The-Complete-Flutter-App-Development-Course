// ignore_for_file: prefer_const_constructors

import 'package:flutter_getx/home_screen.dart';
import 'package:flutter_getx/second_screen.dart';
import 'package:get/get.dart';

const String firstScreen = "/first-screen";
const String secondScreen = "/second-screen";

//control our page flow

List<GetPage> getPages = [
  GetPage(
      name: firstScreen,
      page: () => HomeScreen(),
      transition: Transition.leftToRight),
  GetPage(
      name: secondScreen,
      page: () => SecondScreen(),
      transition: Transition.leftToRight),
];