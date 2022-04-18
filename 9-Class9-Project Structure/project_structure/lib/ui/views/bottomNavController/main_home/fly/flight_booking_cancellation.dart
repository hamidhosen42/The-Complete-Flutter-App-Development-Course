// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../const/app_colors.dart';
import '../../../../route/route.dart';
import '../../../../styles/styles.dart';
import '../../../../widgets/app_buttons.dart';
import '../../../../widgets/app_radio_buttons.dart';

class FlightBookingCancellation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: leadingTitleAppBar("Booking Order"),
      body: Padding(
        padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 20.h),
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
              SizedBox(
                height: 15.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 8.r,
                            backgroundColor: AppColors.majorelle_blue_color,
                          ),
                          DottedLine(
                            dashLength: 7.h,
                            dashGapLength: 3.h,
                            dashRadius: 10.r,
                            lineThickness: 3.w,
                            dashColor: AppColors.majorelle_blue_color,
                            dashGapColor: Colors.transparent,
                            direction: Axis.vertical,
                            lineLength: 60.h,
                          ),
                          CircleAvatar(
                            radius: 8.r,
                            backgroundColor: AppColors.majorelle_blue_color,
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
                          Text(
                            "Indra Gandhai International\nAirport Terminal 3",
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
                      Text(
                        "Indra Gandhai International\nAirport Terminal 3",
                        textAlign: TextAlign.right,
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
              Divider(
                color: Colors.transparent,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Eligible for cancellation",
                    style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFB3B9BE),
                    ),
                  ),
                  InkWell(
                    onTap: () => Get.toNamed(flyPrivacyPolicy),
                    child: Text(
                      "View Policy",
                      style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF149CFC),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40.h,
              ),
              Text(
                "Reason for cancellation",
                style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.auth_detailscolor,
                ),
              ),
              Text(
                "Please tell us correct for cancellation. This information is only used to improve our service",
                style: TextStyle(
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFFBBBBBB),
                ),
              ),
              Divider(
                color: Colors.transparent,
              ),
              Text(
                "Reason for cancellation",
                style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.auth_detailscolor,
                ),
              ),
              Divider(
                color: Colors.transparent,
              ),
              ReasonForCancellationRadio(),
              Divider(
                color: Colors.transparent,
              ),
              SizedBox(
                height: 55.h,
                child: TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 25.w, vertical: 20.h),
                    filled: true,
                    fillColor: Colors.black12,
                    hintText: "Other Reason",
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back,
                        color: AppColors.majorelle_blue_color,
                        size: 16.w,
                      ),
                    ),
                    hintStyle: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.5,
                      color: AppColors.textfield_hintcolor,
                    ),
                  ),
                ),
              ),
              Divider(
                color: Colors.transparent,
              ),
              majorelleBlueButton(
                "Cancel",
                () =>Get.toNamed(bookingOrder),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
