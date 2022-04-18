import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../const/app_colors.dart';
import '../../../../styles/styles.dart';
import '../../../../widgets/app_buttons.dart';
import '../../../../widgets/app_dialog.dart';
import '../../../../widgets/app_text.dart';

class PlaceBookingOrder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightcolor,
      appBar: leadingTitleAppBar("My Bookings and Orders"),
      body: Container(
        color: AppColors.light_background_color,
        child: Padding(
          padding: EdgeInsets.all(15.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 120.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.lightcolor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.w),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
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
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 360.h,
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
                      Text(
                        "1 Booking is Cancelled",
                        style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColors.auth_detailscolor,
                        ),
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 120.h,
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
                                  mediumBlackText("\$ 23",
                                      AppColors.majorelle_blue_color),
                                  SizedBox(
                                    width: 120.h,
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
              Text(
                "View Refund  Details",
                style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.green_color,
                ),
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
             Expanded(child: Container(
               color: AppColors.light_background_color,
             ))
              ],
          ),
        ),
      ),
    );
  }
}
