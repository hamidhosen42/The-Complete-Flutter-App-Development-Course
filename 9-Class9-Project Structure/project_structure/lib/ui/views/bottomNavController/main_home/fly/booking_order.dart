// ignore_for_file: prefer_const_constructors

import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../const/app_colors.dart';
import '../../../../styles/styles.dart';
import '../../../../widgets/app_buttons.dart';
import '../../../../widgets/app_dialog.dart';

class BookingOrder extends StatelessWidget {
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
              Center(
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/booking.png",
                      width: 58.w,
                      height: 58.h,
                    ),
                    Text(
                      "Booking Cancelled",
                      style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColors.auth_detailscolor,
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.transparent,
              ),
              Text(
                "1 Booking is Cancelled",
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
              Text(
                "A refund of ₹ 3433 will be processed.",
                style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.auth_detailscolor,
                ),
              ),
              Text(
                "Please check your orders page to track the refund amount",
                style: TextStyle(
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFFBBBBBB),
                ),
              ),
              Divider(
                color: Colors.transparent,
              ),
              majorelleBlueButton(
                "Done",
                () => {
                  showDialog(
                      context: context,
                      builder: (_) {
                        return refundDetailsDialog;
                      })
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
