// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

import '../../../../const/app_colors.dart';
import '../../../../const/app_strings.dart';
import '../../../route/route.dart';
import '../../../widgets/app_card.dart';
import '../../../widgets/app_text.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cultured_background_color,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: 25.w, right: 25.w, top: 15.h, bottom: 15.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      TextButton(
                        onPressed: () {
                          Get.toNamed(driverprofile);
                        },
                        child: Container(
                          height: 50.h,
                          width: 50.w,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/loginprofile.png'),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          mediumGreenText(AppStrings.hello),
                          smallSemiboldText(AppStrings.user_name),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    height: 35.h,
                    width: 35.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                      color: AppColors.majorelle_blue_color.withOpacity(0.05),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(5.w),
                      child: Image.asset(
                        'assets/icons/bar.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: AppColors.ghost_white_color,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35.r),
                  topRight: Radius.circular(35.r),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 25.h, bottom: 25),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            homeCategoriesCard('assets/icons/car.png',
                                AppStrings.home_get_ride, () {
                              Get.toNamed(pickUpScreens);
                            }),
                            homeCategoriesCard('assets/icons/hotel.png',
                                AppStrings.home_find_hotels, ()
                                  => Get.toNamed(homePlace)
                                ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            homeCategoriesCard(
                                'assets/icons/airoplane.png',
                                AppStrings.home_fly,
                                () => Get.toNamed(flightBooking)),
                            homeCategoriesCard('assets/icons/rentalcar.png',
                                AppStrings.home_rentals, ()=> Get.toNamed(retACars)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            homeCategoriesCard(
                                'assets/icons/cycle.png',
                                AppStrings.home_qwikio_express,
                                () => Get.toNamed(express)),
                            homeCategoriesCard('assets/icons/wallet.png',
                                AppStrings.home_qwikio_pay, () {}),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            homeCategoriesCard('assets/icons/mart.png',
                                AppStrings.home_qwikio_mart, () {}),
                            homeCategoriesCard('assets/icons/bundle.png',
                                AppStrings.home_book_bundle, () {
                              Get.toNamed(bookBundle);
                            }),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.lightcolor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35.r),
                        topRight: Radius.circular(35.r),
                      ),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.only(top: 25.h, left: 25.w, right: 25.w),
                      child: Column(
                        children: [
                          Container(
                            height: 200.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              color: Color(0xfff6f7f8),
                              // ignore: prefer_const_literals_to_create_immutables
                              boxShadow: [
                                BoxShadow(
                                  color: AppColors.majorelle_blue_color
                                      .withOpacity(0.05),
                                  offset: Offset(0, 0),
                                  blurRadius: 50,
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left: 25.w, right: 25.w),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  mediumRaisenBlackText(
                                      AppStrings.home_like_togo),
                                  homeLocationCard(
                                      AppColors.green_color,
                                      AppStrings.home_address,
                                      AppStrings.home,
                                      Icons.arrow_forward),
                                  homeLocationCard(
                                      AppColors.majorelle_blue_color,
                                      AppStrings.home_address,
                                      AppStrings.work,
                                      Icons.arrow_forward),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Align(
                              alignment: Alignment.topLeft,
                              child: mediumRaisenBlackText(
                                  AppStrings.home_near_ride)),
                          SizedBox(
                            height: 10.h,
                          ),
                          Container(
                            height: 180.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            child: Image.asset(
                              'assets/images/map.png',
                              fit: BoxFit.cover,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
