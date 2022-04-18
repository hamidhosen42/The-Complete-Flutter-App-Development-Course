import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import '../../../../../const/app_colors.dart';
import '../../../../route/route.dart';
import '../../../../styles/styles.dart';
import '../../../../widgets/app_buttons.dart';
import '../../../../widgets/app_text.dart';

class PlaceFilter extends StatefulWidget {
  @override
  State<PlaceFilter> createState() => _PlaceFilterState();
}

class _PlaceFilterState extends State<PlaceFilter> {
  SfRangeValues _values = SfRangeValues(0.0, 100.0);
  bool isClick = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //  backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.all(10.w),
          child: CircleAvatar(
            radius: 20.w,
            backgroundColor: AppColors.majorelle_blue_color.withOpacity(0.10),
            child: Center(
              child: IconButton(
                onPressed: () => Get.back(),
                icon: Icon(
                  Icons.arrow_back,
                  color: AppColors.majorelle_blue_color,
                  size: 20.w,
                ),
              ),
            ),
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.all(15.w),
            child: Text(
              "Reset",
              style: TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.w500,
                color: AppColors.green_color,
              ),
            ),
          )
        ],
        title: Text(
          "Filter",
          style: TextStyle(
            fontSize: 15.sp,
            fontWeight: FontWeight.w500,
            color: AppColors.eerie_black_color,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 10.h),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 150.h,
                decoration: lightCardDecoration,
                child: Padding(
                  padding: EdgeInsets.all(10.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      mediumBlackText(
                          "Locations & Landmarks", AppColors.auth_detailscolor),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          filterGroupButton(100.w, "North Goa"),
                          filterGroupButton(100.w, "South Goa"),
                          filterGroupButton(100.w, "Calangute"),
                        ],
                      ),
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          filterGroupButton(80.w, "Baga"),
                          Padding(
                            padding: EdgeInsets.only(left: 20.w, right: 20.w),
                            child: filterGroupButton(90.w, "Condolim"),
                          ),
                          filterGroupButton(90.w, "Anjuna"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 150.h,
                decoration: lightCardDecoration,
                child: Padding(
                  padding: EdgeInsets.all(10.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Price Per Night",
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "upto 29h 33m",
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.dialog_divider_color,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "Price",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      SfRangeSlider(
                        min: 0.0,
                        max: 100.0,
                        values: _values,
                        interval: 20,
                        //showTicks: true,
                        activeColor: AppColors.green_color,
                        // showLabels: true,
                        enableTooltip: true,
                        minorTicksPerInterval: 1,
                        onChanged: (SfRangeValues values) {
                          setState(() {
                            _values = values;
                          });
                        },
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20.w, right: 20.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            smallMediumText("\$4,430", AppColors.green_color),
                            smallMediumText("\$4,430", AppColors.green_color),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 220.h,
                decoration: lightCardDecoration,
                child: Padding(
                  padding: EdgeInsets.all(10.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      mediumBlackText(
                          "Popular in Goa", AppColors.auth_detailscolor),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          filterGroupButton(
                              190.w, "Safe and Hygienic Stays( 50 )"),
                          filterGroupButton(135.w, "Free Cancellation(2)"),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          filterGroupButton(170.w, "Breakfast Available(120 )"),
                          filterGroupButton(150.w, "Romantic Stays(60 )"),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          filterGroupButton(160.w, "All Meals includes(60 )"),
                          filterGroupButton(160.w, "Long Stay Offers(60 )"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 160.h,
                decoration: lightCardDecoration,
                child: Padding(
                  padding: EdgeInsets.all(10.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      mediumBlackText(
                          "Accommodation Type", AppColors.auth_detailscolor),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          filterGroupButton(75.w, "Hotal"),
                          filterGroupButton(140.w, "Bed and Breakfasts"),
                          filterGroupButton(100.w, "Apartments"),
                        ],
                      ),
                      filterGroupButton(215.w, "Guest houses and Home - stays"),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 190.h,
                decoration: lightCardDecoration,
                child: Padding(
                  padding: EdgeInsets.all(10.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      mediumBlackText("Star Rating", AppColors.auth_detailscolor),
                      Container(
                        height:60.h ,
                        child: ListView.builder(
                          itemCount: 4,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              setState(() {
                                isClick = !isClick;
                              });
                            },
                            child: Padding(
                              padding: EdgeInsets.only(right: 15.w),
                              child: Container(
                                height: 50.h,
                                width: 75.w,
                                decoration: BoxDecoration(
                                    color: isClick
                                        ? AppColors.green_color.withOpacity(0.05)
                                        : AppColors.green_color.withOpacity(0.15),
                                    borderRadius: BorderRadius.circular(5.r)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    dialogNormalText(
                                        "3 Star",
                                        isClick
                                            ? AppColors.frosted_grey_color
                                            : AppColors.green_color),
                                    dialogNormalText(
                                        "(324)",
                                        isClick
                                            ? AppColors.frosted_grey_color
                                            : AppColors.green_color),
                                  ],
                                ),
                              ),
                            ),
                          );
                        }),
                      ),
                     majorelleBlueButton("Apply", ()=>Get.toNamed(placeCheckout))
                    ],
                  ),
                ),
              ),
              
           
            ],
          ),
        ),
      ),
    );
  }
}

Widget filterGroupButton(width, title) {
  bool isClick = true;
  return StatefulBuilder(builder: (context, setState) {
    return InkWell(
      onTap: () {
        setState(() {
          isClick = !isClick;
        });
      },
      child: Container(
        height: 40.h,
        width: width,
        decoration: BoxDecoration(
            color: isClick
                ? AppColors.green_color.withOpacity(0.05)
                : AppColors.green_color.withOpacity(0.15),
            borderRadius: BorderRadius.circular(5.r)),
        child: Center(
            child: dialogNormalText(
                title,
                isClick
                    ? AppColors.frosted_grey_color
                    : AppColors.green_color)),
      ),
    );
  });
}
