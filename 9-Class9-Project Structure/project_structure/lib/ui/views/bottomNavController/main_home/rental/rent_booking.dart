import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../../../../../const/app_colors.dart';
import '../../../../route/route.dart';
import '../../../../styles/styles.dart';
import '../../../../widgets/app_buttons.dart';
import '../../../../widgets/app_icons.dart';
import '../../../../widgets/app_text.dart';

class RentBooking extends StatefulWidget {
  const RentBooking({Key? key}) : super(key: key);

  @override
  _RentBookingState createState() => _RentBookingState();
}

class _RentBookingState extends State<RentBooking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightcolor,
      appBar: leadingTitleAppBar("Rent A Car"),
      body: Container(
        color: AppColors.light_background_color,
        child: Padding(
          padding: EdgeInsets.all(8.w),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 190.h,
                width: double.infinity,
                decoration: circularLightDecoration,
                child: Padding(
                  padding: EdgeInsets.all(10.w),
                  child: Image.asset(
                    "assets/images/car.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 75.h,
                    width: 95.w,
                    decoration: lightCardDecoration,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 32.h,
                          width: 32.w,
                          decoration: BoxDecoration(
                              color: AppColors.green_color.withOpacity(0.1),
                              shape: BoxShape.circle),
                          child: Center(
                              child: Icon(
                            Icons.radio_rounded,
                            size: 18.w,
                            color: AppColors.green_color,
                          )),
                        ),
                        dialogNormalText("Manual", AppColors.auth_detailscolor)
                      ],
                    ),
                  ),
                  Container(
                    height: 75.h,
                    width: 95.w,
                    decoration: lightCardDecoration,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 32.h,
                          width: 32.w,
                          decoration: BoxDecoration(
                              color: AppColors.green_color.withOpacity(0.1),
                              shape: BoxShape.circle),
                          child: Center(
                              child: Icon(
                            Icons.radio_rounded,
                            size: 18.w,
                            color: AppColors.green_color,
                          )),
                        ),
                        dialogNormalText("Manual", AppColors.auth_detailscolor)
                      ],
                    ),
                  ),
                  Container(
                    height: 75.h,
                    width: 95.w,
                    decoration: lightCardDecoration,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 32.h,
                          width: 32.w,
                          decoration: BoxDecoration(
                              color: AppColors.green_color.withOpacity(0.1),
                              shape: BoxShape.circle),
                          child: Center(
                              child: Icon(
                            Icons.radio_rounded,
                            size: 18.w,
                            color: AppColors.green_color,
                          )),
                        ),
                        dialogNormalText("Manual", AppColors.auth_detailscolor)
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
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
                    width: 20.w,
                  ),
                  Column(
                    children: [
                      Container(
                        decoration: lightCardDecoration,
                        width: 290.w,
                        child: Padding(
                          padding: EdgeInsets.all(10.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              dialogNormalText("Tue, 16 Jul , 10.30 Pm",
                                  AppColors.auth_detailscolor),
                              smallMediumText(
                                  "Rohini", AppColors.dialog_divider_color)
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Container(
                        width: 290.w,
                        decoration: lightCardDecoration,
                        child: Padding(
                          padding: EdgeInsets.all(10.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              dialogNormalText("Tue, 16 Jul , 10.30 Pm",
                                  AppColors.auth_detailscolor),
                              smallMediumText(
                                  "Rohini", AppColors.dialog_divider_color)
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              smallMediumText(
                  "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt",
                  Color(0xffB3B9BE)),
              SizedBox(
                height: 15.h,
              ),
              majorelleBlueButton(
                  "Book Now (\$650.00)", () => Get.toNamed(bundleCheckout))
            ],
          ),
        ),
      ),
    );
  }
}