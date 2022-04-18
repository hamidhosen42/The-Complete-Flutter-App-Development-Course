import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../const/app_colors.dart';
import '../../../../route/route.dart';
import '../../../../styles/styles.dart';
import '../../../../widgets/app_buttons.dart';
import '../../../../widgets/app_icons.dart';
import '../../../../widgets/app_text.dart';

class BookBundleCheckout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: leadingTitleAppBar("My Bundle Save"),
      body: Padding(
        padding: EdgeInsets.all(15.w),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Flight Booking",
                style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.auth_detailscolor,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/images/indigo.png",
                    width: 58.w,
                    height: 12.h,
                  ),
                  Text(
                    "\$23",
                    style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.auth_detailscolor,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "06:10",
                        style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColors.auth_detailscolor,
                        ),
                      ),
                      Text(
                        "Sat, 17 Jul 21",
                        style: TextStyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.frosted_grey_color,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "08:10",
                        style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColors.auth_detailscolor,
                        ),
                      ),
                      Text(
                        "Sun, 17 Jul 21",
                        style: TextStyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.frosted_grey_color,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 15.h, bottom: 15.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 8.r,
                              backgroundColor: AppColors.green_color,
                            ),
                            simpleDotLine(),
                            CircleAvatar(
                              radius: 8.r,
                              backgroundColor: AppColors.green_color,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 15.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "New Delhi",
                              style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w600,
                                color: AppColors.auth_detailscolor,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5.h, bottom: 5.h),
                              child: Text(
                                "Indra Gandhai International\nAirport Terminal 3",
                                style: TextStyle(
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.frosted_grey_color,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Mumbai",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColors.auth_detailscolor,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5.h, bottom: 5.h),
                          child: Text(
                            "Indra Gandhai International\nAirport Terminal 3",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.frosted_grey_color,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              greenButton("Edit", () {}),
              SizedBox(
                height: 15.h,
              ),
              Container(
                height: 260.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.lightcolor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.w),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(20.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      mediumRaisenBlackText("Stay Booking"),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 100.h,
                            width: 100.w,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.w),
                                child: Image.asset(
                                  "assets/images/staythree.png",
                                  fit: BoxFit.cover,
                                )),
                          ),
                          SizedBox(
                            width: 15.w,
                          ),
                          Column(
                            //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 10.h,
                              ),
                              authDetailsText("Double 2 double beds"),
                              SizedBox(
                                height: 5.h,
                              ),
                              dialogNormalText("2 day including Breakfast",
                                  AppColors.spanish_grey_color),
                              SizedBox(
                                height: 15.h,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  mediumBlackText(
                                      "\$ 23", AppColors.majorelle_blue_color),
                                  SizedBox(
                                    width: 100.h,
                                  ),
                                  Container(
                                    height: 30.h,
                                    width: 30.w,
                                    decoration: BoxDecoration(
                                        color: AppColors.majorelle_blue_color
                                            .withOpacity(0.1),
                                        shape: BoxShape.circle),
                                    child: Icon(
                                      Icons.arrow_forward_ios,
                                      size: 12.w,
                                      color: AppColors.majorelle_blue_color,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                      greenButton("Edit", () {})
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Container(
                height: 260.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.lightcolor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.w),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(20.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      mediumRaisenBlackText("Rental  Booking"),
                      Row(
                        children: [
                          Container(
                            height: 85.h,
                            width: 120.w,
                            child: Image.asset(
                              "assets/images/car.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  radioButtonChecked(),
                                  simpleDotLine(),
                                  radioButtonChecked(),
                                ],
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Column(
                                children: [
                                  Container(
                                    decoration: lightCardDecoration,
                                    width: 150.w,
                                    child: Padding(
                                      padding: EdgeInsets.all(10.h),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          dialogNormalText(
                                              "Tue, 16 Jul , 10.30 Pm",
                                              AppColors.auth_detailscolor),
                                          smallMediumText("Rohini",
                                              AppColors.dialog_divider_color)
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15.h,
                                  ),
                                  Container(
                                    width: 150.w,
                                    decoration: lightCardDecoration,
                                    child: Padding(
                                      padding: EdgeInsets.all(10.h),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          dialogNormalText(
                                              "Tue, 16 Jul , 10.30 Pm",
                                              AppColors.auth_detailscolor),
                                          smallMediumText("Rohini",
                                              AppColors.dialog_divider_color)
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                      greenButton("Edit", () {})
                    ],
                  ),
                ),
              ),
              majorelleBlueButton(
                "Checkout (\$69)",
                () => Get.toNamed(bookingOrder),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
