// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_application_1/navigation%20&%20route/secondScreen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'google fonts & custom fonts/google_custom_font.dart';
import 'input & form/text_form_field.dart';
import 'navigation & route/firstScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        '/firstScreen': (context) => FirstScreen(),
        'secondScreen': (context) => SecondScreen(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,

        // ------------google font------------
        textTheme: GoogleFonts.hurricaneTextTheme(
          Theme.of(context).textTheme.apply(),
        ),
        fontFamily: "RubikMoonrocks",
      ),
      home: SafeArea(
        // child: TextureField(),
        // child: FirstScreen(),
        child: GoogleCustom(),
      ),
    );
  }
}
