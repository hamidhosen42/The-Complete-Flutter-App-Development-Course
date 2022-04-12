// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class ThemePage extends StatefulWidget {
  const ThemePage({Key? key}) : super(key: key);

  @override
  State<ThemePage> createState() => _ThemePageState();
}

class _ThemePageState extends State<ThemePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Theme Page"),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text(
                  "Flutter is an open-source UI software development kit created by Google. It is used to develop cross platform applications for Android, iOS, Linux, macOS, Windows, Google Fuchsia, and the web from a single codebase. First described in 2015, Flutter was released in May 2017"),
              SizedBox(
                height: 20,
              ),
              FloatingActionButton(
                onPressed: () {},
                child: Text("Bangle"),
              ),
              ElevatedButton(onPressed: (){}, 
              child: Text("English"))
            ],
          ),
        ),
      ),
    );
  }
}