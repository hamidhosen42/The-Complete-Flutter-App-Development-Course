// ignore_for_file: prefer_const_constructors, must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../const/app_colors.dart';
import '../styles/styles.dart';

class NumberOfTravellers extends StatefulWidget {
  String title, hint;
  NumberOfTravellers(this.title, this.hint);

  @override
  _NumberOfTravellersState createState() => _NumberOfTravellersState();
}

class _NumberOfTravellersState extends State<NumberOfTravellers> {
  int _value = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20.h),
      child: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                flightBookingTitle(widget.title),
                Row(
                  children: [
                    Container(
                      height: 28.h,
                      width: 28.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(7.r)),
                      ),
                      child: Material(
                        borderRadius: BorderRadius.all(Radius.circular(7.r)),
                        color: AppColors.majorelle_blue_color.withOpacity(0.10),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              _value = _value - 1;
                            });
                          },
                          splashColor: AppColors.lightcolor,
                          child: Center(
                            child: Text(
                              "-",
                              style: TextStyle(
                                fontSize: 14.sp,
                                color: AppColors.frosted_grey_color,
                                letterSpacing: 0.6,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Text(
                      _value.toString(),
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors.eerie_black_color,
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Container(
                      height: 28.h,
                      width: 28.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(7.r)),
                      ),
                      child: Material(
                        borderRadius: BorderRadius.all(Radius.circular(7.r)),
                        color: AppColors.majorelle_blue_color,
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              _value = _value + 1;
                            });
                          },
                          splashColor: AppColors.lightcolor,
                          child: Center(
                            child: Text(
                              "+",
                              style: TextStyle(
                                fontSize: 14.sp,
                                color: AppColors.lightcolor,
                                letterSpacing: 0.6,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              width: ScreenUtil().screenWidth,
              height: 40.h,
              color: Colors.white,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 10.w),
                  child: Text(
                    widget.hint,
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: AppColors.textfield_hintcolor,
                      letterSpacing: 0.6,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class NumberOfTickets extends StatefulWidget {
  String title, subtitle;
  NumberOfTickets(this.title, this.subtitle);

  @override
  _NumberOfTicketsState createState() => _NumberOfTicketsState();
}

class _NumberOfTicketsState extends State<NumberOfTickets> {
  int value = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(bottom: 10.h),
        child: Container(
          width: ScreenUtil().screenWidth,
          height: 50.h,
          color: AppColors.lightcolor,
          child: Padding(
            padding:  EdgeInsets.only(left: 10.w,right: 10.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    flightBookingTitle(widget.title),
                    Text(
                      widget.subtitle,
                      style: TextStyle(
                        fontSize: 10.sp,
                        color: AppColors.dialog_divider_color,
                        letterSpacing: 0.6,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 22.h,
                      width: 22.w,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.green_color.withOpacity(0.2)),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            value = value - 1;
                          });
                        },
                        splashColor: AppColors.lightcolor,
                        child: Center(
                          child: Text(
                            "-",
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: AppColors.green_color,
                              letterSpacing: 0.6,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Text(
                      value.toString(),
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors.eerie_black_color,
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Container(
                      height: 22.h,
                      width: 22.w,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: AppColors.green_color),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            value = value + 1;
                          });
                        },
                        splashColor: AppColors.lightcolor,
                        child: Center(
                          child: Text(
                            "+",
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: AppColors.lightcolor,
                              letterSpacing: 0.6,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}

class NumberOfRoomGuest extends StatefulWidget {
  String title;
  NumberOfRoomGuest(this.title);

  @override
  _NumberOfRoomGuestState createState() => _NumberOfRoomGuestState();
}

class _NumberOfRoomGuestState extends State<NumberOfRoomGuest> {
  int value = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(bottom: 10.h),
        child: Container(
          width: ScreenUtil().screenWidth,
          height: 50.h,
          color: AppColors.lightcolor,
          child: Padding(
            padding:  EdgeInsets.only(left: 10.w,right: 10.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                flightBookingTitle(widget.title),
                Row(
                  children: [
                    Container(
                      height: 22.h,
                      width: 22.w,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.green_color.withOpacity(0.2)),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            value = value - 1;
                          });
                        },
                        splashColor: AppColors.lightcolor,
                        child: Center(
                          child: Text(
                            "-",
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: AppColors.green_color,
                              letterSpacing: 0.6,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Text(
                      value.toString(),
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors.eerie_black_color,
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Container(
                      height: 22.h,
                      width: 22.w,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: AppColors.green_color),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            value = value + 1;
                          });
                        },
                        splashColor: AppColors.lightcolor,
                        child: Center(
                          child: Text(
                            "+",
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: AppColors.lightcolor,
                              letterSpacing: 0.6,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
