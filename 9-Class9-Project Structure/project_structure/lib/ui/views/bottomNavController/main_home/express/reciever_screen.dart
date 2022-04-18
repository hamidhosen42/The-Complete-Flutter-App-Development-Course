// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../const/app_colors.dart';
import '../../../../route/route.dart';
import '../../../../styles/styles.dart';
import '../../../../widgets/app_buttons.dart';
import '../../../../widgets/app_text.dart';

class RecieverScreen extends StatelessWidget {
  const RecieverScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.textfield_fillcolor,
      appBar: AppBar(
        backgroundColor: AppColors.lightcolor,
        elevation: 0,
        leading:Padding(
          padding: EdgeInsets.all(12.w),
          child: CircleAvatar(
        radius: 17.w,
        backgroundColor: AppColors.majorelle_blue_color.withOpacity(0.10),
        child: Center(
          child: IconButton(
            onPressed: () => Get.back(),
            icon: Icon(
              Icons.arrow_back,
              color: AppColors.majorelle_blue_color,
              size: 15.w,
            ),
          ),
        ),
      ),
        ),
        centerTitle: true,
        title: mediumBlackText("Recieve a Package", AppColors.eerie_black_color),
      ),
      body: Padding(
        padding: EdgeInsets.all(5.w),
        child: Container(
          height: 450.h,
          decoration: lightCardDecoration,
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Who are you receiving the package from",
                  style: TextStyle(
                    fontSize: 20.sp,
                    color: AppColors.auth_detailscolor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: authDetailsText(
                      "The driver may contact the ecipient to complete the delivery"),
                ),
                SizedBox(height:15.h),
                mediumBlackText("Name", AppColors.auth_detailscolor),
                SizedBox(
                  height: 44.h,
                  child: TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 25.w, vertical: 14.h),
                      filled: true,
                      fillColor: AppColors.ghost_white_color,
                      hintText: "Sunita",
                      hintStyle: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.5,
                        color: AppColors.sender_textfield_color,
                      ),
                    ),
                  ),
                ),
                SizedBox(height:15.h),
                mediumBlackText("Phone Number", AppColors.auth_detailscolor),
                SizedBox(
                  height: 44.h,
                  child: TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 25.w, vertical: 14.h),
                      filled: true,
                      fillColor: AppColors.ghost_white_color,
                      hintText: "Phone Number",
                      hintStyle: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.5,
                        color: AppColors.sender_textfield_color,
                      ),
                    ),
                  ),
                ),
                SizedBox(height:15.h),
                majorelleBlueButton(
                  "Confirm reciever",
                  () {
                    Get.toNamed(dropofLocation);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
    
  }
}
