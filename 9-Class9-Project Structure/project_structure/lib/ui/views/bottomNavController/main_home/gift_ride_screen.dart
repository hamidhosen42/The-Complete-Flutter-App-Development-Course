// ignore_for_file: prefer_is_empty, prefer_const_constructors, unnecessary_string_interpolations, unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

import '../../../../const/app_colors.dart';
import '../../../../const/app_strings.dart';
import '../../../styles/styles.dart';
import '../../../widgets/app_buttons.dart';
import '../../../widgets/app_dialog.dart';
import '../../../widgets/app_text.dart';

class GiftRideScreen extends StatefulWidget {
  const GiftRideScreen({Key? key}) : super(key: key);

  @override
  _GiftRideScreenState createState() => _GiftRideScreenState();
}

class _GiftRideScreenState extends State<GiftRideScreen> {
  var value = "";
  String dropdownValue = '+91';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.cultured_background_color,
      body: Padding(
        padding: EdgeInsets.only(left: 30.w, right: 30.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                closeBackButton(30.h, 30.h, 14.w, () {
                  Get.back();
                }),
                mediumBlackText(
                    AppStrings.gift_ride, AppColors.eerie_black_color),
                Text('   ')
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppStrings.ride_give_friends,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 12.sp,
                    color: AppColors.spanish_grey_color,
                    letterSpacing: 0.6,
                    height: 1.6,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                dialogNormalText(
                    AppStrings.mobile_number, AppColors.davys_grey_color),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: 45.h,
                  decoration: lightCardDecoration,
                  child: Padding(
                    padding: EdgeInsets.only(left: 15.w),
                    child: Row(
                      children: [
                        DropdownButton<String>(
                          value: dropdownValue,
                          icon: Align(
                            alignment: Alignment.centerRight,
                            child: Icon(
                              Icons.keyboard_arrow_down,
                              color: AppColors.darkcolor,
                              size: 15.w,
                            ),
                          ),
                          iconSize: 24.w,
                          elevation: 16,
                          hint: Text(
                            '+91',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.sp,
                            ),
                          ),
                          dropdownColor: AppColors.majorelle_blue_color,
                          underline: Container(
                            height: 1,
                            color: Colors.transparent,
                          ),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownValue = newValue!;
                            });
                          },
                          items: <String>[
                            '+91',
                            '+88',
                            '+05',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Padding(
                                padding: EdgeInsets.only(right: 10.w),
                                child: Text(
                                  value,
                                  style: TextStyle(
                                    color: AppColors.darkcolor,
                                    fontSize: 16.sp,
                                  ),
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                        Expanded(
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 25.w, vertical: 20.h),
                              filled: true,
                              fillColor: AppColors.lightcolor,
                              labelText: "$value",
                              hintText: AppStrings.create_account_hinttext,
                              hintStyle: TextStyle(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.5,
                                color: AppColors.textfield_hintcolor,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Text(
                  "$value",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 24.sp,
                    color: AppColors.darkcolor,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                majorelleBlueButton(AppStrings.send, () {
                   Navigator.of(context).pop();
                  showDialog(
                      context: context,
                      // builder: (BuildContext context) => shareRideDialog);
                      builder: (BuildContext context) =>
                          shareRideDialog(context));
                }),
                SizedBox(
                  height: 20.h,
                ),
                Wrap(
                  spacing: 60.w,
                  children: [
                    dialPadButton(() {
                      setState(
                        () {
                          value = value + "1";
                        },
                      );
                    }, "1"),
                    dialPadButton(() {
                      setState(() {
                        value = value + "2";
                      });
                    }, "2"),
                    dialPadButton(() {
                      setState(() {
                        value = value + "3";
                      });
                    }, "3"),
                    dialPadButton(() {
                      setState(() {
                        value = value + "4";
                      });
                    }, "4"),
                    dialPadButton(() {
                      setState(() {
                        value = value + "5";
                      });
                    }, "5"),
                    dialPadButton(() {
                      setState(() {
                        value = value + "6";
                      });
                    }, "6"),
                    dialPadButton(() {
                      setState(() {
                        value = value + "7";
                      });
                    }, "7"),
                    dialPadButton(() {
                      setState(() {
                        value = value + "8";
                      });
                    }, "8"),
                    dialPadButton(() {
                      setState(() {
                        value = value + "9";
                      });
                    }, "9"),
                    dialPadButton(() {}, ""),
                    dialPadButton(() {
                      setState(() {
                        value = value + "0";
                      });
                    }, "0"),
                    Material(
                      color: Colors.transparent,
                      child: IconButton(
                          onPressed: () {
                            setState(() {
                              if (value.length > 0) {
                                value = value.substring(0, value.length - 1);
                              }
                            });
                          },
                          icon: Icon(
                            Icons.backspace,
                            color: AppColors.auth_detailscolor,
                            size: 22.w,
                          )),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

