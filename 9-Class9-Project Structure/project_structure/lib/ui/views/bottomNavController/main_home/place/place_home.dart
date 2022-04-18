// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../../../../../const/app_colors.dart';
import '../../../../route/route.dart';
import '../../../../styles/styles.dart';
import '../../../../widgets/app_icons.dart';
import '../../../../widgets/app_text.dart';

class PlaceHome extends StatefulWidget {
  @override
  _PlaceHomeState createState() => _PlaceHomeState();
}

class _PlaceHomeState extends State<PlaceHome> {
  var searchedValue = "";
  var value = false;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 6,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppColors.lightcolor,
        appBar: leadingTitleAppBar("Stay"),
        body: Container(
          color: AppColors.light_background_color,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(20.w),
                child: Container(
                  height: 40.h,
                  child: TextFormField(
                    //controller: controller,
                    keyboardType: TextInputType.text,
                    style: TextStyle(
                        fontSize: 12.sp,
                        color: AppColors.auth_detailscolor,
                        fontWeight: FontWeight.w600),
                    onChanged: (val) {
                      setState(() {
                        searchedValue = val;
                      });
                    },
                    obscureText: false,
                    textInputAction: TextInputAction.next,
                    onTap: () => Get.toNamed(hotelSearch),
                    //onFieldSubmitted: onFieldSubmitted,
                    // validator: validator,
                    maxLines: 1,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search_outlined),
                      border: InputBorder.none,
                      filled: true,
                      fillColor: AppColors.lightcolor,
                      hintText: "Search On Your location",
                      hintStyle: TextStyle(
                          fontSize: 12.sp, color: AppColors.dark_grey_color),
                      errorStyle: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    TabBar(
                      isScrollable: true,
                      labelStyle: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                      ),
                      unselectedLabelStyle: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w500,
                      ),
                      labelColor: AppColors.auth_detailscolor,
                      unselectedLabelColor: AppColors.dialog_divider_color,
                      labelPadding: EdgeInsets.only(left: 9, right: 9, top: 0),
                      tabs: [
                        Tab(
                          text: "New Delhi",
                        ),
                        Tab(
                          text: "Gurugram",
                        ),
                        Tab(
                          text: "Noida",
                        ),
                        Tab(
                          text: "Dwarka",
                        ),
                        Tab(
                          text: "Rohini",
                        ),
                        Tab(
                          text: "Dexico",
                        ),
                      ],
                    ),
                    //  Divider(
                    //    color: Colors.transparent,
                    //  ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          Container(
                            height: 240.h,
                            color: AppColors.lightcolor,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: 20.w, top: 20.w, bottom: 20.w),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        mediumBlackText("For You",
                                            AppColors.auth_detailscolor),
                                        Padding(
                                          padding: EdgeInsets.only(right: 20.w),
                                          child: InkWell(
                                            onTap: () =>
                                                Get.toNamed(findStay),
                                            child: dialogNormalText("View All",
                                                AppColors.majorelle_blue_color),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    carouselImageSection(),
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        mediumBlackText("Recommended",
                                            AppColors.auth_detailscolor),
                                        Padding(
                                          padding: EdgeInsets.only(right: 20.w),
                                          child: InkWell(
                                            onTap: () =>
                                                Get.toNamed(findStay),
                                            child: dialogNormalText("View All",
                                                AppColors.majorelle_blue_color),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    nearbyActivities(),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(),
                          Container(),
                          Container(),
                          Container(),
                          Container(),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  carouselImageSection() {
    return Container(
      height: 180.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(right: 10.w),
              child: InkWell(
                onTap: () => Get.toNamed(bookHotel),
                child: Container(
                  height: 170.h,
                  width: 145.w,
                  decoration: BoxDecoration(
                    color: AppColors.light_background_color,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.w),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 110.h,
                        width: double.infinity,
                        child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10.w),
                              topRight: Radius.circular(10.w),
                            ),
                            child: Image.asset(
                              "assets/images/stayone.png",
                              fit: BoxFit.cover,
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.all(12.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            smallMediumText(
                                "4 BHK stay", AppColors.auth_detailscolor),
                            SizedBox(
                              height: 5.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    starIcon(Icons.star, 12.w),
                                    SizedBox(
                                      width: 8.w,
                                    ),
                                    smallMediumText(
                                        '4.2', AppColors.green_color)
                                  ],
                                ),
                                Container(
                                  height: 20.h,
                                  width: 45.w,
                                  decoration: BoxDecoration(
                                      color: AppColors.majorelle_blue_color
                                          .withOpacity(0.1),
                                      borderRadius: BorderRadius.circular(4.r)),
                                  child: Center(
                                      child: smallMediumText("10% 0ff",
                                          AppColors.majorelle_blue_color)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }

  nearbyActivities() {
    return Container(
      height: 270.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(right: 10.w),
              child: Container(
                height: 260.h,
                width: 240.w,
                decoration: BoxDecoration(
                  color: AppColors.light_background_color,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.w),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 180.h,
                      width: double.infinity,
                      child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.w),
                            topRight: Radius.circular(10.w),
                          ),
                          child: Image.asset(
                            "assets/images/staytwo.png",
                            fit: BoxFit.cover,
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.all(12.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          smallMediumText("Full house for family stay",
                              AppColors.auth_detailscolor),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            "Near Airport, sector-57",
                            style: TextStyle(
                              fontSize: 10.sp,
                              color: AppColors.dialog_divider_color,
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Row(
                            children: [
                              starIcon(Icons.star, 12.w),
                              SizedBox(
                                width: 8.w,
                              ),
                              smallMediumText('4.2', AppColors.green_color)
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}

Widget customTextField(
  TextInputType keyboardtype,
  bool obscuretext,
  Function(String) onChanged,
  prefixicon,
  BuildContext context,
  hinttext,
  validator,
  Function onTap,
  Function(String) onFieldSubmitted,
) {
  return Container(
    height: 40.h,
    child: TextFormField(
      //controller: controller,
      keyboardType: keyboardtype,
      style: TextStyle(
          fontSize: 12.sp,
          color: AppColors.auth_detailscolor,
          fontWeight: FontWeight.w600),
      onChanged: onChanged,
      obscureText: obscuretext,
      textInputAction: TextInputAction.next,
      onTap: () {},
      onFieldSubmitted: onFieldSubmitted,
      validator: validator,
      maxLines: 1,
      decoration: InputDecoration(
        prefixIcon: prefixicon,
        border: InputBorder.none,
        filled: true,
        fillColor: AppColors.lightcolor,
        // border:  OutlineInputBorder(
        //   borderSide:  BorderSide(
        //     color: Colors.grey,
        //   ),
        // ),
        // focusedBorder:  OutlineInputBorder(
        //   borderSide:  BorderSide(
        //     color: AppColors.auth_detailscolor,
        //   ),
        // ),

        hintText: hinttext,
        hintStyle: TextStyle(fontSize: 12.sp, color: AppColors.dark_grey_color),
        errorStyle: TextStyle(fontSize: 12),
      ),
    ),
  );
}

class PlaceCarouselSlider {
  String image;
  String title;
  String rating;
  String time;

  PlaceCarouselSlider(this.image, this.title, this.rating, this.time);
}

class NearbyActivities {
  String image;
  String title;
  String rating;
  String distance;

  NearbyActivities(this.image, this.title, this.rating, this.distance);
}
