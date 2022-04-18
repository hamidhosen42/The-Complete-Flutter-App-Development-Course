// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../../../../const/app_colors.dart';
import '../../../route/route.dart';
import '../../../widgets/app_text.dart';

class SettingsScreeen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.light_background_color,
      child: Column(
        children: [
          Container(
            height: 65.h,
            color: AppColors.lightcolor,
            child: Center(
              child: Text(
                "Settings",
                style: TextStyle(
                  fontSize: 20.sp,
                  color: AppColors.auth_detailscolor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.h, left: 20.w, right: 20.w),
            child: Column(
              children: [
                settingsCardWidget(
                    Icons.notifications_outlined, "Notification settings", () {
                  Get.toNamed(notificationSettings);
                }),
                settingsCardWidget(
                    Icons.lock_outline, "Change password", () {
                       Get.toNamed(changePassword);
                    }),
                settingsCardWidget(
                    Icons.help_outline, "Help and support", () {
                      Get.toNamed(helpSupport);
                    }),
                settingsCardWidget(Icons.priority_high, "About", () {}),
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget settingsCardWidget(icon, title, onpress) {
  return Padding(
    padding: EdgeInsets.only(bottom: 10.h),
    child: InkWell(
      splashColor: AppColors.davys_grey_color,
      onTap: onpress,
      child: Container(
        height: 55.h,
        color: AppColors.lightcolor,
        child: Padding(
          padding: EdgeInsets.all(10.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Container(
                    height: 35.h,
                    width: 35.w,
                    decoration: BoxDecoration(
                        color: AppColors.green_color.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(5.w)),
                    child: Center(
                        child: Icon(
                      icon,
                      size: 18.w,
                      color: AppColors.green_color,
                    )),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  mediumRaisenBlackText(title),
                ],
              ),
              Container(
                height: 30.h,
                width: 30.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.majorelle_blue_color.withOpacity(0.05),
                ),
                child: Center(
                    child: Icon(
                  Icons.arrow_forward_ios,
                  size: 12.w,
                  color: AppColors.majorelle_blue_color,
                )),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
