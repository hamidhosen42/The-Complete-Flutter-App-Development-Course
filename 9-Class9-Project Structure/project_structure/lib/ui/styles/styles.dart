// ignore_for_file: prefer_const_constructors

import 'package:dotted_line/dotted_line.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../const/app_colors.dart';

// ignore: prefer_const_constructors
BoxDecoration backgroundImageDecoration = BoxDecoration(
  image: DecorationImage(
      image: AssetImage('assets/images/background.png'), fit: BoxFit.fill),
);

BoxDecoration lightCardDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(6.r), color: AppColors.lightcolor);

BoxDecoration modalCardDecoration = BoxDecoration(
  color: AppColors.cultured_background_color,
  // ignore: prefer_const_literals_to_create_immutables
  boxShadow: [
    BoxShadow(
      color: Color(0x4d5663ff),
      offset: Offset(0, 5),
      blurRadius: 99,
    ),
  ],
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(35.r),
    topRight: Radius.circular(35.r),
  ),
);

RoundedRectangleBorder shape = RoundedRectangleBorder(
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(35.r),
    topRight: Radius.circular(35.r),
  ),
);

Widget simpleDotLine() {
  return DottedLine(
    dashLength: 7.h,
    dashGapLength: 3.h,
    dashRadius: 10.r,
    lineThickness: 3.w,
    dashColor: Color(0xffC8C7CC),
    dashGapColor: Colors.transparent,
    direction: Axis.vertical,
    lineLength: 40.h,
  );
}

Widget dotCircle() {
  return Container(
    height: 4.h,
    width: 4.w,
    decoration: BoxDecoration(
        color: AppColors.majorelle_blue_color, shape: BoxShape.circle),
  );
}

leadingTitleAppBar(title) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    leading: Padding(
      padding: EdgeInsets.all(10.w),
      child: CircleAvatar(
        radius: 20.w,
        backgroundColor: AppColors.majorelle_blue_color.withOpacity(0.10),
        child: Center(
          child: IconButton(
            onPressed: () => Get.back(),
            icon: Icon(
              Icons.arrow_back,
              color: AppColors.majorelle_blue_color,
              size: 20.w,
            ),
          ),
        ),
      ),
    ),
    centerTitle: true,
    title: Text(
      title,
      style: TextStyle(
        fontSize: 15.sp,
        fontWeight: FontWeight.w500,
        color: AppColors.eerie_black_color,
      ),
    ),
  );
}

flightBookingTitle(title) {
  return Text(
    title,
    style: TextStyle(
      fontSize: 12.sp,
      fontWeight: FontWeight.w500,
      color: AppColors.eerie_black_color,
    ),
  );
}

Widget complexDotLine(direction, lineheight) {
  return DottedLine(
    dashLength: 6.h,
    dashGapLength: 2.h,
    dashRadius: 10.r,
    lineThickness: 1.5.w,
    dashColor: AppColors.majorelle_blue_color,
    dashGapColor: Colors.transparent,
    direction: direction,
    lineLength: lineheight,
  );
}

//update
BoxDecoration circularLightDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(10.r), color: AppColors.lightcolor);