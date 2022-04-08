// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GoogleCustom extends StatelessWidget {
  const GoogleCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Google & Custom Fonts",
            style: GoogleFonts.robotoMono(
              textStyle: Theme.of(context).textTheme.headline4,
              fontSize: 20,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.italic,
            )),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text(
              "Google Fonts",
              style: TextStyle(fontSize: 25),
            ),
            Text(
              "Hi There! I am learning Flutter.",
              style: TextStyle(fontSize: 40),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "Customs Fonts",
              style: TextStyle(fontSize: 30, fontFamily: "RubikMoonrocks"),

            ),
            Text(
              "Hi There! I am learning Flutter.",
              style: TextStyle(fontSize: 40,fontFamily: "RubikMoonrocks"),
            ),
          ],
        ),
      ),
    );
  }
}
