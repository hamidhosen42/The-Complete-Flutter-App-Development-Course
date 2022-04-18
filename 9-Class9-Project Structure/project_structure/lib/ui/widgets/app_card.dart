// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../const/app_colors.dart';
import '../styles/styles.dart';
import 'app_text.dart';

Widget homeLocationCard(
    Color color, String address, String place, IconData icon) {
  return Container(
    height: 50.h,
    decoration: lightCardDecoration,
    child: Padding(
      padding: EdgeInsets.only(left: 20.w, right: 20.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 27.h,
                width: 27.w,
                decoration: BoxDecoration(color: color, shape: BoxShape.circle),
                child: Center(
                    child: Icon(
                  Icons.location_on,
                  size: 11.w,
                  color: AppColors.lightcolor,
                )),
              ),
              SizedBox(width: 10.w),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    address,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 10.sp,
                      color: AppColors.frosted_grey_color,
                      letterSpacing: 0.25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  smallRegularText(place, AppColors.textfield_hintcolor)
                ],
              ),
            ],
          ),
          Icon(
            icon,
            size: 15.w,
            color: AppColors.majorelle_blue_color,
          )
        ],
      ),
    ),
  );
}

Widget homeCategoriesCard(String image, String categorytext, onpress) {
  return Padding(
    padding: EdgeInsets.only(bottom: 12.h, left: 6.w, right: 6.w),
    child: TextButton(
      onPressed: onpress,
      child: Container(
        height: 68.h,
        width: 155.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: AppColors.lightcolor,
          // ignore: prefer_const_literals_to_create_immutables
          boxShadow: [
            BoxShadow(
              color: Color(0x0d5663ff),
              offset: Offset(0, 5),
              blurRadius: 50,
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 15.w),
          child: Row(
            children: [
              Container(
                height: 40.h,
                width: 40.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  color: AppColors.majorelle_blue_color.withOpacity(0.05),
                ),
                child: Padding(
                  padding: EdgeInsets.all(9.w),
                  child: Image.asset(
                    image,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              Text(
                categorytext,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 11.sp,
                  color: AppColors.darkcolor,
                  letterSpacing: 0.25,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

Widget profileReviewCard(IconData icon, String number) {
  return Container(
    height: 95.h,
    width: 95.w,
    decoration: lightCardDecoration,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 32.h,
          width: 32.w,
          decoration: BoxDecoration(
              color: AppColors.majorelle_blue_color.withOpacity(0.1),
              shape: BoxShape.circle),
          child: Center(
              child: Icon(
            icon,
            size: 14.w,
            color: AppColors.majorelle_blue_color,
          )),
        ),
        Text(
          number,
          style: TextStyle(
            fontSize: 24.sp,
            color: AppColors.auth_detailscolor,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    ),
  );
}