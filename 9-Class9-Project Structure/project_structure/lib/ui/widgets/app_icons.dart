// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../const/app_colors.dart';

Widget dialogForwardIcon() {
  return Icon(
    Icons.arrow_forward,
    size: 15.w,
    color: AppColors.lightcolor,
  );
}

Widget blueForwardIcon() {
  return Icon(
    Icons.arrow_forward,
    size: 15.w,
    color: AppColors.majorelle_blue_color,
  );
}

Widget radioButtonChecked() {
  return Icon(
    Icons.radio_button_checked,
    color: AppColors.green_color,
  );
}

Widget starIcon(IconData icon, size) {
  return Icon(
    icon,
    color: AppColors.green_color,
    size: size,
  );
}