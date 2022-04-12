// ignore_for_file: prefer_const_constructors

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:theme_and_animation/Animation/rive_animation.dart';
import 'package:theme_and_animation/Responsive%20design/Responsive%20design.dart';

class AnimationPage extends StatefulWidget {
  const AnimationPage({Key? key}) : super(key: key);

  @override
  State<AnimationPage> createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 100),
              AnimatedTextKit(
                animatedTexts: [
                  ScaleAnimatedText('Lotti Animation'),
                ],
                onTap: () {},
              ),
              SizedBox(height: 30),
              Lottie.network(
                  "https://assets9.lottiefiles.com/packages/lf20_y6fp9djo.json"),
              SizedBox(height: 30),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => Rive_Animation()));
                  },
                  child: Text("Rive animation")),
              SizedBox(height: 30),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => ResponsiveDesign()));
                  },
                  child: Text("Responsive Design")),
            ],
          ),
        ),
      ),
    );
  }
}
