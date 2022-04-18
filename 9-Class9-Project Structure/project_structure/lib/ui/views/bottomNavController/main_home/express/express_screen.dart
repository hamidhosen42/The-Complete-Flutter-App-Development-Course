// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';

import '../../../../styles/styles.dart';
import '../../../../widgets/app_bottom_modals.dart';

class ExpressScreen extends StatefulWidget {
  const ExpressScreen({ Key? key }) : super(key: key);

  @override
  State<ExpressScreen> createState() => _ExpressScreenState();
}

class _ExpressScreenState extends State<ExpressScreen> {
  express() {
    return showModalBottomSheet(
      shape: shape,
      context: context,
      builder: (context) => expressModal(
        () {
          Navigator.of(context).pop();
        
        },
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    Timer(
      Duration(seconds: 1),
      () => express(),
    );
    return Scaffold(
      body:Container(
        decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/driverBackground.png'),
                        fit: BoxFit.cover)),
                        // child:express()
      )
    );
  }
}