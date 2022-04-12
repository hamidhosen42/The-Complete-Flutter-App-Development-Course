// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:theme_and_animation/Codebase_Animation/code_aniation.dart';

class Rive_Animation extends StatefulWidget {
  const Rive_Animation({Key? key}) : super(key: key);

  @override
  State<Rive_Animation> createState() => _Rive_AnimationState();
}

class _Rive_AnimationState extends State<Rive_Animation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          SizedBox(height: 100),
          AnimatedTextKit(
            animatedTexts: [
              ScaleAnimatedText('Rive Animation'),
            ],
            onTap: () {},
          ),
          SizedBox(height: 30),
          Center(
            child: Container(
              height: 400,
              width: 300,
              child: RiveAnimation.network(
                'https://cdn.rive.app/animations/vehicles.riv',
                artboard: "Truck",
                animations: ['curves'],
              ),
            ),
          ),
          SizedBox(height: 30),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>CodeAnimation()));
              },
              child: Text("Code Base animation")),
        ],
      ),
    );
  }
}
