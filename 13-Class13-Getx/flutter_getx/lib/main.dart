// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_getx/route/route.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'home_screen.dart';

Future<void> main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();

  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      initialRoute: firstScreen,
      getPages: getPages,
    );
  }
}
