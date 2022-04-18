// ignore_for_file: prefer_is_empty, prefer_const_constructors, unnecessary_string_interpolations, unnecessary_null_comparison

import 'package:flutter/material.dart';

import '../../../../const/app_colors.dart';

class NoftificationScreen extends StatefulWidget {
  const NoftificationScreen({Key? key}) : super(key: key);

  @override
  _NoftificationScreenState createState() => _NoftificationScreenState();
}

class _NoftificationScreenState extends State<NoftificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cultured_background_color,
      body: Center(
        child: Text("Notification Screen"),
      ),
    );
  }
}
