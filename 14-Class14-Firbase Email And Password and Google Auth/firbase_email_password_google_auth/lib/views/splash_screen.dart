// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'dart:async';

import 'package:firbase_email_password_google_auth/views/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'sign_up.dart';
import 'package:get_storage/get_storage.dart';

class SplashScreen extends StatelessWidget {
  final box = GetStorage();

  chooseScreen(context) async {
    var userID = await box.read('id');

    if (userID != null) {
      return Navigator.push(
          context, CupertinoPageRoute(builder: (_) => HomeScreen(userID)));
    } else {
      return Navigator.push(
          context, CupertinoPageRoute(builder: (_) => SignUp()));
    }
  }

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 5), () => chooseScreen(context));
    return Scaffold(
      body: Center(
        child: CircleAvatar(
          radius: 70,
          backgroundImage: NetworkImage(
              "https://scontent.fdac144-1.fna.fbcdn.net/v/t39.30808-6/286859407_1497798203969641_3141963777619098365_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeEPlz-udOFLgxfuiwLd0Y68uGEed2ZLqVm4YR53ZkupWf4PIfgkfTKrIVjZ1Q3e92inAV4zFRSJLw_4AaQglTN1&_nc_ohc=QSkx27CeMvwAX-gNd1U&tn=GQ8m8NHpAFEqK5xm&_nc_ht=scontent.fdac144-1.fna&oh=00_AT8ujb348ygjFtz0xRMIPZRG71Jemu9CK-sTELsZ-a96Ww&oe=62AD6C9B"),
        ),
      ),
    );
  }
}