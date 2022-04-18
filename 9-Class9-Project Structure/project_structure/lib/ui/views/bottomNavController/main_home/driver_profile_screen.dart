// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, must_be_immutable


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../const/app_colors.dart';
import '../../../../const/app_strings.dart';
import '../../../styles/styles.dart';
import '../../../widgets/app_buttons.dart';
import '../../../widgets/app_card.dart';
import '../../../widgets/app_divider.dart';
import '../../../widgets/app_text.dart';

class DriverProfileScreen extends StatelessWidget {
  final ScrollController controller = ScrollController();
  List<String> cardicon = [
    'assets/images/reward.png',
    'assets/images/star.png',
    'assets/images/location.png',
    'assets/images/message.png',
    'assets/images/flexible.png'
  ];
  List<String> cardtitle = [
    'Premium Support',
    'Highly rated drivers',
    'Premium rides point boost',
    'Priority support',
    'Flexible cancellations',
  ];
  List<String> cardsubtitle = [
    'Lorem Ipsum is simply dummy text.',
    'Lorem Ipsum is simply dummy text.',
    'Lorem Ipsum is simply dummy text.',
    'Lorem Ipsum is simply dummy text.',
    'Lorem Ipsum is simply dummy text.',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cultured_background_color,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(overflow: Overflow.visible, children: [
              Container(
                height: 130.h,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/driverBackground.png'),
                        fit: BoxFit.fill)),
                child: Padding(
                  padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 10.h),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 32.h,
                            width: 32.w,
                            decoration: BoxDecoration(
                                color: AppColors.lightcolor.withOpacity(0.1),
                                shape: BoxShape.circle),
                            child: Center(
                                child: Icon(
                              Icons.arrow_back,
                              size: 15.w,
                              color: AppColors.lightcolor,
                            )),
                          ),
                          Container(
                            height: 32.h,
                            width: 32.w,
                            decoration: BoxDecoration(
                                color: AppColors.lightcolor.withOpacity(0.1),
                                shape: BoxShape.circle),
                            child: Center(
                                child: Icon(
                              Icons.help,
                              size: 15.w,
                              color: AppColors.lightcolor,
                            )),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Positioned(
                  // top: -50.h,

                  child: Padding(
                    padding: EdgeInsets.only(top: 60.h),
                    child: Container(
                      height: 135.h,
                      width: 135.w,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image:
                                  AssetImage('assets/images/loginprofile.png'),
                              fit: BoxFit.cover)),
                    ),
                  ),
                ),
              ),
            ]),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 25.w, right: 25.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppStrings.driver_name,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20.sp,
                              color: AppColors.space_cadet_color,
                              fontWeight: FontWeight.w500,
                              height: 1.8,
                            ),
                          ),
                          mediumGreenText(AppStrings.driver_points)
                        ],
                      ),
                      SizedBox(
                        width: 130.w,
                        child: majorelleBlueButton(AppStrings.diamond, () {}),
                      ),
                    ],
                  ),
                  authDetailsText(AppStrings.driver_address),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      profileReviewCard(Icons.star_outline, '4.89'),
                      profileReviewCard(Icons.person_outline, '92'),
                      profileReviewCard(Icons.block, '4'),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    height: 165.h,
                    decoration: lightCardDecoration,
                    child: Padding(
                      padding: EdgeInsets.only(top: 15.h, bottom: 5.h),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 20.w),
                              child: dialogNormalText(AppStrings.driver_hobby,
                                  AppColors.auth_detailscolor),
                            ),
                            profileDivider(),
                            Padding(
                              padding: EdgeInsets.only(left: 20.w),
                              child: dialogNormalText(
                                  AppStrings.driver_trips_quantity,
                                  AppColors.auth_detailscolor),
                            ),
                            profileDivider(),
                            Padding(
                              padding: EdgeInsets.only(left: 20.w),
                              child: dialogNormalText(
                                  AppStrings.driver_language,
                                  AppColors.auth_detailscolor),
                            ),
                            profileDivider(),
                            Padding(
                              padding: EdgeInsets.only(left: 20.w),
                              child: dialogNormalText(
                                  AppStrings.driver_home_address,
                                  AppColors.auth_detailscolor),
                            ),
                          ]),
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: AppColors.lotion_color,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5.r),
                          topRight: Radius.circular(5.r),
                        )),
                    child: Padding(
                      padding: EdgeInsets.all(15.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppStrings.driver_diamond_rewards,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16.sp,
                              color: AppColors.auth_detailscolor,
                              letterSpacing: 0.4,
                              fontWeight: FontWeight.w500,
                              height: 1.25,
                            ),
                          ),
                          SizedBox(
                            height: 460.h,
                            child: ListView.builder(
                              controller: controller,
                              itemCount: cardicon.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: EdgeInsets.only(top: 15.h),
                                  child: Container(
                                    height: 75.h,
                                    decoration: lightCardDecoration,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        left: 20.w,
                                      ),
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 50.h,
                                            width: 50.w,
                                            decoration: BoxDecoration(
                                                color: AppColors
                                                    .majorelle_blue_color
                                                    .withOpacity(0.1),
                                                shape: BoxShape.circle),
                                            child: Center(
                                              child: Container(
                                                height: 25.h,
                                                width: 25.h,
                                                decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            cardicon[index]),
                                                        fit: BoxFit.cover)),
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 20.w),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                cardtitle[index],
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 14.sp,
                                                  color: AppColors
                                                      .auth_detailscolor,
                                                  letterSpacing: 0.35,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.4,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 5.h,
                                              ),
                                              Text(
                                                cardsubtitle[index],
                                                style: TextStyle(
                                                  fontSize: 10.sp,
                                                  color: AppColors
                                                      .davys_grey_color,
                                                  letterSpacing: 0.25,
                                                  fontWeight: FontWeight.w500,
                                                  height: 1.7,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
