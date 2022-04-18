import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../const/app_colors.dart';

Text authBlueText(String title) {
  return Text(
    title,
    style: TextStyle(
      fontSize: 20.sp,
      color: AppColors.majorelle_blue_color,
      fontWeight: FontWeight.w500,
      height: 1.8,
    ),
    textAlign: TextAlign.center,
  );
}

Text authDetailsText(String detailstext) {
  return Text(
    detailstext,
    style: TextStyle(
      fontSize: 14.sp,
      color: AppColors.auth_detailscolor,
      height: 1.4,
    ),
    textAlign: TextAlign.center,
  );
}

//auth-dialog

Widget smallRegularText(String text, Color color) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 8.sp,
      color: color,
    ),
    textAlign: TextAlign.center,
  );
}

Widget smallSemiboldText(String text) {
  return Text(
    text,
    style: TextStyle(
        fontSize: 8.sp,
        color: AppColors.auth_detailscolor,
        fontWeight: FontWeight.w600),
    textAlign: TextAlign.center,
  );
}

Widget dialogNormalText(String text, Color color) {
  return Text(
    text,
    style: TextStyle(
      fontFamily: "Poppins",
      fontSize: 12.sp,
      color: color,
      letterSpacing: 0.6,
      fontWeight: FontWeight.w500,
    ),
  );
}

Widget dialogBlueText(String text) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 12.sp,
      color: AppColors.majorelle_blue_color,
      fontWeight: FontWeight.w500,
      height: 3,
    ),
  );
}

//home
Widget mediumGreenText(String text) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 16.sp,
      color: AppColors.green_color,
      letterSpacing: 0.4,
      fontWeight: FontWeight.w600,
    ),
  );
}

Widget mediumRaisenBlackText(String text) {
  return Text(
    text,
    style: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 14.sp,
      color: AppColors.raisin_black,
      letterSpacing: 0.325,
      fontWeight: FontWeight.w500,
    ),
  );
}

Widget mediumBlackText(String text, Color color) {
  return Text(
    text,
    style: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 15.sp,
      color: color,
      letterSpacing: 0.75,
      fontWeight: FontWeight.w500,
      height: 1.3,
    ),
  );
}

Widget mediumHeadingText(String heading, Color color) {
  return Text(
    heading,
    style: TextStyle(
      fontSize: 24.sp,
      color: color,
      fontWeight: FontWeight.w500,
      height: 1.5,
    ),
  );
}

//update
Widget smallMediumText(String text, Color color) {
  return Text(
    text,
    style:
        TextStyle(fontSize: 10.sp, color: color, fontWeight: FontWeight.w500),
  );
}