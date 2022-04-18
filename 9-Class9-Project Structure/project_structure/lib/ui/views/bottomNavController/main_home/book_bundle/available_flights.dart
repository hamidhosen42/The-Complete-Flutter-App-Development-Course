import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../const/app_colors.dart';
import '../../../../route/route.dart';
import '../../../../styles/styles.dart';
import '../../../../widgets/app_buttons.dart';

class BookBundleFlightBooking extends StatefulWidget {
  @override
  State<BookBundleFlightBooking> createState() => _BookBundleFlightBookingState();
}

class _BookBundleFlightBookingState extends State<BookBundleFlightBooking> {
 
  flightDetailsBottomSheet() {
    return showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      shape: shape,
      builder: (_) {
        return Container(
          height: 600.h,
          decoration: modalCardDecoration,
          child: Padding(
            padding: EdgeInsets.only(
                left: 20.w, right: 20.w, top: 40.h, bottom: 15.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Flight Details",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "Done",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColors.majorelle_blue_color,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25.h,
                ),
                Container(
                  height: 57.h,
                  width: ScreenUtil().screenWidth,
                  decoration: BoxDecoration(
                    color: AppColors.majorelle_blue_color,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(8.r),
                      bottomRight: Radius.circular(8.r),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "New Delhi To Mumbai",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "18 July | 1 Adult | Economy",
                        style: TextStyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Image.asset(
                  "assets/images/indigo.png",
                  width: 58.w,
                  height: 12.h,
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
                    Text(
                      "2 hrs 10 mins",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFC8C7CC),
                      ),
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Mumbai",
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
                Center(
                  child: Image.asset(
                    "assets/images/qr.png",
                    width: 107.w,
                    height: 107.h,
                  ),
                ),
                Divider(),
                majorelleBlueButton(
                  "Continue (₹ 4,345 )",
                
                  () => Get.toNamed(homePlace),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: leadingTitleAppBar("New Delhi To Mumbai"),
      body: Padding(
        padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 20.h),
        child: Column(
          children: [
            InkWell(
             // onDoubleTap: () => sortBottomSheet(),
              onTap: () => flightDetailsBottomSheet(),
              child: Card(
                child: Padding(
                  padding: EdgeInsets.only(
                      top: 15.h, bottom: 15.h, left: 20.w, right: 20.w),
                  child: Container(
                    width: ScreenUtil().screenWidth,
                    height: 150.h,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 8.r,
                                      backgroundColor:
                                          AppColors.majorelle_blue_color,
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
                                      backgroundColor:
                                          AppColors.majorelle_blue_color,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 15.w,
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "New Delhi",
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.auth_detailscolor,
                                      ),
                                    ),
                                    Text(
                                      "Mumbai",
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.auth_detailscolor,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 15.w,
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "06:10",
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.frosted_grey_color,
                                      ),
                                    ),
                                    Text(
                                      "08:10",
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.frosted_grey_color,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "One Way Trip",
                                  style: TextStyle(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.spanish_grey_color,
                                  ),
                                ),
                                Container(
                                  height: 40.h,
                                  width: 70.w,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(7.r)),
                                  ),
                                  child: Material(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(7.r)),
                                    color: AppColors.majorelle_blue_color
                                        .withOpacity(0.10),
                                    child: InkWell(
                                      onTap: () {},
                                      splashColor: AppColors.lightcolor,
                                      child: Center(
                                        child: Text(
                                          "₹4,434",
                                          style: TextStyle(
                                            fontSize: 12.sp,
                                            color: AppColors.auth_detailscolor,
                                            letterSpacing: 0.6,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        Divider(),
                        Image.asset(
                          "assets/images/indigo.png",
                          width: 58.w,
                          height: 12.h,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
