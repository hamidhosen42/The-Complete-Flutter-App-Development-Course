// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../const/app_colors.dart';
import '../../../../route/route.dart';
import '../../../../styles/styles.dart';
import '../../../../widgets/app_buttons.dart';
import '../../../../widgets/app_radio_buttons.dart';
import '../../../../widgets/app_text.dart';
import '../../../../widgets/travellers_widget.dart';

class BookBundleScreen extends StatefulWidget {
  @override
  State<BookBundleScreen> createState() => _BookBundleScreenState();
}

class _BookBundleScreenState extends State<BookBundleScreen> {

  int _radioSelected = 2;
  String? _radioVal;

  bookBundleTicketBottomSheet() {
    return showModalBottomSheet(
     // isScrollControlled: true,
      context: context,
      shape: shape,
      builder: (_) {
        return Container(
          height: 460.h,
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
                      "Rooms & Guest",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    InkWell(
                      onTap:
                         ()=>Get.toNamed(bookFlightBooking),
                     
                      child: Text(
                        "Done",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColors.green_color,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25.h,
                ),
                Container(
                  height: 180.h,
                  child:Column(
                    children: [
                      NumberOfTickets("Adult", "18-30 Years"),
                      NumberOfTickets("Children", "2-12 Years"),
                      NumberOfTickets("Infants", "0-2 Years")
                    ],
                  ),
                ),
                Text(
                  "Class",
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.auth_detailscolor,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                ClassRadio(),
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
      backgroundColor: AppColors.lightcolor,
      appBar: leadingTitleAppBar("Book Bundle"),
      body: Container(
        color: AppColors.light_background_color,
        child: Padding(
          padding: EdgeInsets.all(10.w),
          child: Container(
            color: AppColors.lightcolor,
            child: Padding(
              padding: EdgeInsets.all(20.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: 180.h,
                      width: 250.w,
                      child: Image.asset(
                        "assets/images/place.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(top: 0.h,bottom: 0.h),
                    child: Text(
                      "Choose Bundle package & Get discount",
                      style: TextStyle(
                        fontSize: 20.sp,
                        color: AppColors.auth_detailscolor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  mediumBlackText(
                      "Select an option below:", AppColors.outer_space_color),
                
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 25.h,
                        child: Row(
                          children: [
                            Radio(
                              value: 1,
                              groupValue: _radioSelected,
                              activeColor: AppColors.green_color,
                              onChanged: (value) {
                                setState(() {
                                  _radioSelected = value as int;
                                  _radioVal = 'Flight + Stay';
                                  //print(_radioVal);
                                });
                              },
                            ),
                            Text(
                              "Flight + Stay",
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: AppColors.dialog_divider_color,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      SizedBox(
                        height: 25.h,
                        child: Row(
                          children: [
                            Radio(
                              value: 2,
                              groupValue: _radioSelected,
                              activeColor: AppColors.green_color,
                              onChanged: (value) {
                                setState(() {
                                  _radioSelected = value as int;
                                  _radioVal = 'Flight + Stay + Rental';
                                  //print(_radioVal);
                                });
                              },
                            ),
                            Text(
                              "Flight + Stay + Rental",
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color: AppColors.auth_detailscolor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      SizedBox(
                        height: 25.h,
                        child: Row(
                          children: [
                            Radio(
                              value: 3,
                              groupValue: _radioSelected,
                              activeColor: AppColors.green_color,
                              onChanged: (value) {
                                setState(() {
                                  _radioSelected = value as int;
                                  _radioVal = 'Flight + Rental';
                                  // print(_radioVal);
                                });
                              },
                            ),
                            Text(
                              "Flight + Rental",
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color: AppColors.dialog_divider_color,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      SizedBox(
                        height: 25.h,
                        child: Row(
                          children: [
                            Radio(
                              value: 4,
                              groupValue: _radioSelected,
                              activeColor: AppColors.green_color,
                              onChanged: (value) {
                                setState(() {
                                  _radioSelected = value as int;
                                  _radioVal = 'Stay+ Rental';
                                  // print(_radioVal);
                                });
                              },
                            ),
                            Text(
                              "Stay+ Rental",
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color: AppColors.dialog_divider_color,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      SizedBox(
                        height: 25.h,
                        child: Row(
                          children: [
                            Radio(
                              value: 5,
                              groupValue: _radioSelected,
                              activeColor: AppColors.green_color,
                              onChanged: (value) {
                                setState(() {
                                  _radioSelected = value as int;
                                  _radioVal = 'Flight + Stay + Ride';
                                  //print(_radioVal);
                                });
                              },
                            ),
                            Text(
                              "Flight + Stay + Ride",
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color: AppColors.dialog_divider_color,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  majorelleBlueButton(
                    "Find Your Trip",
                    (){bookBundleTicketBottomSheet();}
                   // () => Get.toNamed(flightBookingCencalation),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

