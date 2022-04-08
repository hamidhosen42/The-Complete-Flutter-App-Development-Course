// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Localization with getx'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              Text(
                "app_name".tr,
                style: TextStyle(fontSize: 40),
              ),
              Text(
                "app_title".tr,
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(height: 50,),
              ElevatedButton(onPressed: (){
                Get.updateLocale(Locale('en', 'US'));
              }, child: Text("English")),
              ElevatedButton(onPressed: (){
                Get.updateLocale(Locale('bn', 'BD'));
              }, child: Text("Bangle"))
            ],
          ),
        ),
      );
  }
}