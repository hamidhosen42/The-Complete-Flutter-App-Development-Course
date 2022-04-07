// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../Component/gridview.dart';

class Add extends StatelessWidget {
  const Add({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Gridview(),
      ),
    );
  }
}