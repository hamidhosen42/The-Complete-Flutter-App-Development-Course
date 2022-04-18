import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../const/app_colors.dart';
import '../../../../route/route.dart';
import '../../../../styles/styles.dart';
import '../../../../widgets/app_buttons.dart';

class MyBooking extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: leadingTitleAppBar("My Booking"),
      body: Padding(
        padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "FLight Booking",
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
            Divider(),
            majorelleBlueButton(
              "Cancel",
              () => Get.toNamed(flightBookingCencalation),
            ),
          ],
        ),
      ),
    );
  }
}
