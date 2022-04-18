import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../../../../../const/app_colors.dart';
import '../../../../route/route.dart';
import '../../../../styles/styles.dart';
import '../../../../widgets/app_buttons.dart';
import '../../../../widgets/app_radio_buttons.dart';
import '../../../../widgets/app_text.dart';
import 'find_your_stay.dart';

class BookingCancellation extends StatefulWidget {
  const BookingCancellation({Key? key}) : super(key: key);

  @override
  _BookingCancellationState createState() => _BookingCancellationState();
}

class _BookingCancellationState extends State<BookingCancellation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightcolor,
      appBar: leadingTitleAppBar("My Booking and orders"),
      body: Container(
        color: AppColors.light_background_color,
        child: Padding(
          padding: EdgeInsets.all(15.w),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                  height: 210.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.lightcolor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.w),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(25.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
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
                                    mediumBlackText(
                                        "\$ 23", AppColors.majorelle_blue_color),
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            dialogNormalText("Eligible for cancellation",
                                AppColors.dialog_divider_color),
                            dialogNormalText(
                                "View Policy", AppColors.green_color),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  height: 485.h,
                  color: AppColors.lightcolor,
                  child: Padding(
                padding: EdgeInsets.all(25.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    mediumBlackText("Reason for cancellation",
                        AppColors.auth_detailscolor),
                    Padding(
                      padding: EdgeInsets.only(top: 10.h, bottom: 10.h),
                      child: dialogNormalText(
                          "Please tell us correct for cancellation. This information is only used to improve our service",
                          AppColors.dialog_divider_color),
                    ),
                    mediumRaisenBlackText("Select Reason"),
                    SizedBox(height: 10.h,),
                    BookingCancellationRadio(),
                    placeTextfield(double.infinity, TextInputType.text, "Reason",AppColors.lightcolor),
                      majorelleBlueButton("Refund", ()=> Get.toNamed(placePrivacyPolicy))
                  ],
                ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
