// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../../../../../const/app_colors.dart';
import '../../../../route/route.dart';
import '../../../../widgets/app_buttons.dart';
import '../../../../widgets/app_icons.dart';
import '../../../../widgets/app_text.dart';

class BookHotel extends StatefulWidget {
  @override
  _BookHotelState createState() => _BookHotelState();
}

class _BookHotelState extends State<BookHotel> {
  List<IconData> iconname = [
    Icons.ac_unit_outlined,
    Icons.tv_outlined,
    Icons.wifi_outlined,
    Icons.light_outlined,
    Icons.coffee_maker_outlined,
  ];
  List<String> title = [
    "AC",
    "TV",
    "Wifi",
    "Geyser",
    "Coffee",
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.light_background_color,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10.w),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 340.h,
                  decoration: BoxDecoration(
                      color: AppColors.lightcolor,
                      borderRadius: BorderRadius.circular(12.r)),
                  child: Column(
                    children: [
                      Container(
                        height: 260.h,
                        width: double.infinity,
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12.w),
                            topRight: Radius.circular(12.w),
                          ),
                          child: Image.asset(
                            "assets/images/stayone.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15.w, right: 15.w),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                mediumBlackText("Beleza by the beach",
                                    AppColors.auth_detailscolor),
                                authBlueText("\$ 5000"),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    starIcon(Icons.star, 15.w),
                                    SizedBox(
                                      width: 8.w,
                                    ),
                                    mediumBlackText(
                                        '4.2', AppColors.green_color)
                                  ],
                                ),
                                dialogNormalText("Distance 5 Kms",
                                    AppColors.frosted_grey_color)
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  height: 380.h,
                  decoration: BoxDecoration(
                      color: AppColors.lightcolor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12.r),
                        topRight: Radius.circular(12.r),
                      )),
                  child: Padding(
                    padding: EdgeInsets.all(15.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        mediumBlackText(
                            "Discription", AppColors.auth_detailscolor),
                        SizedBox(
                          height: 15.h,
                        ),
                        dialogNormalText(
                            "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.",
                            AppColors.frosted_grey_color),
                        SizedBox(
                          height: 20.h,
                        ),
                        mediumBlackText(
                            "Amenities", AppColors.auth_detailscolor),
                        SizedBox(
                          height: 15.h,
                        ),
                        Container(
                          height: 85.h,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 5,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: EdgeInsets.only(right: 10.w),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        height: 55.h,
                                        width: 55.w,
                                        decoration: BoxDecoration(
                                            color: AppColors.green_color
                                                .withOpacity(0.1),
                                            borderRadius:
                                                BorderRadius.circular(8.r)),
                                        child: Center(
                                            child: Icon(
                                          iconname[index],
                                          size: 25.w,
                                          color: AppColors.green_color,
                                        )),
                                      ),
                                      dialogNormalText(
                                          title[index], AppColors.green_color)
                                    ],
                                  ),
                                );
                              }),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        majorelleBlueButton("Book Now (\$650.00)", ()=> Get.toNamed(retACars) )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
