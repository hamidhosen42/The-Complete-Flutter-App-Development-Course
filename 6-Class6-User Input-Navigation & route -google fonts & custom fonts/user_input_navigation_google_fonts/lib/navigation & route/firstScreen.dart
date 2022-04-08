// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/navigation%20&%20route/secondScreen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Screen"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigator.pushReplacementNamed(context, '/secondScreen');

            Navigator.pushNamed(context, '/secondScreen');

            // Navigator.pushReplacement(
            //     context, CupertinoPageRoute(builder: (_) => SecondScreen()));

            // Navigator.push(
            //     context, CupertinoPageRoute(builder: (_) => SecondScreen()));
          },
          child: Text("Go to Second Screen"),
        ),
      ),
    );
  }
}
