// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import '../../const/app_colors.dart';
import '../../const/app_strings.dart';
import '../route/route.dart';
import '../styles/styles.dart';
import '../views/bottomNavController/main_home/gift_ride_screen.dart';
import 'app_buttons.dart';
import 'app_card.dart';
import 'app_dialog.dart';
import 'app_icons.dart';
import 'app_text.dart';

DateTime selectedDate = DateTime.now();

TimeOfDay selectedTime = TimeOfDay.now();

Future<TimeOfDay?> selectedTime24Hour(context) {
  return showTimePicker(
    context: context,
    initialTime: const TimeOfDay(hour: 10, minute: 47),
    builder: (BuildContext context, Widget? child) {
      return MediaQuery(
        data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true),
        child: child!,
      );
    },
  );
}

Future<void> _selectDate(BuildContext context) async {
  final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2015, 8),
      lastDate: DateTime(2101));
}

Widget pickUpModal(Function onClick) {
  return Container(
    height: 340.h,
    decoration: modalCardDecoration,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(30.w),
          child: mediumRaisenBlackText(AppStrings.where_want_go),
        ),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 30.w),
                  child: complexDotLine(Axis.horizontal, 25.h),
                ),
                complexDotLine(Axis.vertical, 30.h),
                CircleAvatar(
                  radius: 8.h,
                  backgroundColor: AppColors.majorelle_blue_color,
                  child: Transform.rotate(
                      angle: 300,
                      child: Icon(
                        Icons.send,
                        color: AppColors.lightcolor,
                        size: 9.w,
                        textDirection: TextDirection.rtl,
                      )),
                ),
                complexDotLine(Axis.vertical, 30.h),
                Padding(
                  padding: EdgeInsets.only(left: 30.w),
                  child: complexDotLine(Axis.horizontal, 25.h),
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(right: 30.w),
                child: Column(
                  children: [
                    ridePickDropLocationCard(
                        Icons.radio_button_checked,
                        AppColors.majorelle_blue_color,
                        AppColors.lightcolor,
                        AppStrings.pickup,
                        AppStrings.current_location,
                        SizedBox()),
                    SizedBox(
                      height: 20.h,
                    ),
                    ridePickDropLocationCard(
                      Icons.location_on,
                      AppColors.lightcolor,
                      AppColors.green_color,
                      AppStrings.drop_off,
                      AppStrings.current_location_address,
                      SizedBox(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.all(30.w),
          child: majorelleBlueButton(
            AppStrings.confirm_pickup,
            onClick,
          ),
        )
      ],
    ),
  );
}

Widget ridePickDropLocationCard(
    icon, iconColor, iconBackground, title, subtitle, child) {
  return Container(
    height: 50.h,
    decoration: lightCardDecoration,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 15.w, right: 15.w),
          child: Container(
            height: 30.h,
            width: 30.w,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: iconBackground),
            child: Center(
                child: Icon(
              icon,
              color: iconColor,
              size: 18.w,
            )),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            smallSemiboldText(title),
            dialogNormalText(subtitle, AppColors.auth_detailscolor),
          ],
        ),
        child
      ],
    ),
  );
}

Widget dropoffLocationModal(Function onClick) {
  bool isClickOne = true;
  bool isClickTwo = false;
  return StatefulBuilder(builder: (context, setState) {
    return Container(
      height: 700.h,
      decoration: modalCardDecoration,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(30.w),
            child: mediumRaisenBlackText(AppStrings.where_want_go),
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: complexDotLine(Axis.horizontal, 25.h),
                  ),
                  complexDotLine(Axis.vertical, 30.h),
                  CircleAvatar(
                    radius: 8.h,
                    backgroundColor: AppColors.majorelle_blue_color,
                    child: Transform.rotate(
                        angle: 300,
                        child: Icon(
                          Icons.send,
                          color: AppColors.lightcolor,
                          size: 9.w,
                          textDirection: TextDirection.rtl,
                        )),
                  ),
                  complexDotLine(Axis.vertical, 30.h),
                  Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: complexDotLine(Axis.horizontal, 25.h),
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(right: 30.w),
                  child: Column(
                    children: [
                      ridePickDropLocationCard(
                          Icons.radio_button_checked,
                          AppColors.majorelle_blue_color,
                          AppColors.lightcolor,
                          AppStrings.pickup,
                          AppStrings.current_location,
                          SizedBox()),
                      SizedBox(
                        height: 20.h,
                      ),
                      ridePickDropLocationCard(
                        Icons.location_on,
                        AppColors.lightcolor,
                        AppColors.green_color,
                        AppStrings.drop_off,
                        AppStrings.current_location_address,
                        Padding(
                          padding: EdgeInsets.only(left: 15.w),
                          child: Container(
                            height: 22.h,
                            width: 22.h,
                            decoration: BoxDecoration(
                                color: AppColors.majorelle_blue_color
                                    .withOpacity(0.1),
                                shape: BoxShape.circle),
                            child: Center(
                              child: Icon(
                                Icons.close,
                                size: 10.w,
                                color: AppColors.majorelle_blue_color,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(30.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Divider(
                  thickness: 1,
                  color: AppColors.dialog_divider_color.withOpacity(0.3),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.h, bottom: 20.h),
                  child: mediumRaisenBlackText(AppStrings.recent),
                ),
                ridePickDropLocationCard(
                    Icons.location_on,
                    AppColors.lightcolor,
                    AppColors.green_color,
                    AppStrings.drop_off,
                    AppStrings.current_location_address,
                    Padding(
                      padding: EdgeInsets.only(left: 20.w),
                      child: IconButton(
                        icon: Icon(
                          isClickOne ? Icons.favorite : Icons.favorite_border,
                          size: 18.w,
                          color: AppColors.majorelle_blue_color,
                        ),
                        onPressed: () {
                          setState(() {
                            isClickOne = !isClickOne;
                          });
                        },
                      ),
                    )),
                SizedBox(
                  height: 20.h,
                ),
                ridePickDropLocationCard(
                    Icons.location_on,
                    AppColors.lightcolor,
                    AppColors.green_color,
                    AppStrings.drop_off,
                    AppStrings.current_location_address,
                    Padding(
                      padding: EdgeInsets.only(left: 20.w),
                      child: IconButton(
                        icon: Icon(
                          isClickTwo ? Icons.favorite : Icons.favorite_border,
                          size: 18.w,
                          color: AppColors.majorelle_blue_color,
                        ),
                        onPressed: () {
                          setState(() {
                            isClickTwo = !isClickTwo;
                          });
                        },
                      ),
                    )),
                Divider(
                  thickness: 1,
                  color: AppColors.dialog_divider_color.withOpacity(0.3),
                ),
                majorelleBlueButton(
                  AppStrings.confirm_pickup,
                  onClick,
                )
              ],
            ),
          )
        ],
      ),
    );
  });
}

Widget confirmDropoffModal(Function onClick) {
  return Container(
    height: 250.h,
    decoration: modalCardDecoration,
    child: Padding(
      padding: EdgeInsets.all(20.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              mediumRaisenBlackText(AppStrings.confirm_dropoff),
              TextButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: dialogBlueText(AppStrings.cancel))
            ],
          ),
          homeLocationCard(AppColors.green_color, AppStrings.dropoff_title,
              AppStrings.dropoff_address, Icons.favorite_border),
          majorelleBlueButton(AppStrings.confirm_dropoff, onClick)
        ],
      ),
    ),
  );
}

Widget confirmPickupModal(Function onClick) {
  return Container(
    height: 350.h,
    decoration: modalCardDecoration,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(30.w),
          child: mediumRaisenBlackText(AppStrings.where_want_go),
        ),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 30.w),
                  child: complexDotLine(Axis.horizontal, 25.h),
                ),
                complexDotLine(Axis.vertical, 30.h),
                CircleAvatar(
                  radius: 8.h,
                  backgroundColor: AppColors.majorelle_blue_color,
                  child: Transform.rotate(
                      angle: 300,
                      child: Icon(
                        Icons.send,
                        color: AppColors.lightcolor,
                        size: 9.w,
                        textDirection: TextDirection.rtl,
                      )),
                ),
                complexDotLine(Axis.vertical, 30.h),
                Padding(
                  padding: EdgeInsets.only(left: 30.w),
                  child: complexDotLine(Axis.horizontal, 25.h),
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(right: 30.w),
                child: Column(
                  children: [
                    ridePickDropLocationCard(
                        Icons.radio_button_checked,
                        AppColors.majorelle_blue_color,
                        AppColors.lightcolor,
                        AppStrings.pickup,
                        AppStrings.current_location,
                        SizedBox()),
                    SizedBox(
                      height: 20.h,
                    ),
                    ridePickDropLocationCard(
                        Icons.location_on,
                        AppColors.lightcolor,
                        AppColors.green_color,
                        AppStrings.drop_off,
                        AppStrings.current_location_address,
                        SizedBox()),
                  ],
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.all(30.w),
          child: majorelleBlueButton(AppStrings.confirm_trip_next, onClick),
        )
      ],
    ),
  );
}

Widget selectPodModal(Function onClick, BuildContext context) {
  return Container(
    height: 550.h,
    decoration: modalCardDecoration,
    child: Padding(
      padding: EdgeInsets.all(20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          mediumRaisenBlackText(AppStrings.choose_ride),
          Container(
            height: 60.h,
            decoration: lightCardDecoration,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 45.h,
                  width: 45.w,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/images/radialcar.png'),
                          fit: BoxFit.cover)),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        dialogNormalText(AppStrings.qwikio_green,
                            AppColors.auth_detailscolor),
                        SizedBox(
                          width: 30.w,
                        ),
                        smallSemiboldText(AppStrings.ride_time),
                      ],
                    ),
                    smallSemiboldText(AppStrings.good_ride)
                  ],
                ),
                Container(
                  height: 40.h,
                  width: 70.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.r),
                    color: AppColors.green_color.withOpacity(0.1),
                  ),
                  child: Center(
                      child: mediumBlackText(
                          AppStrings.usd, AppColors.auth_detailscolor)),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  _selectDate(context);
                  selectedTime24Hour(context);
                  confirmScheduleModal(context);
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.alarm,
                      color: AppColors.majorelle_blue_color,
                      size: 14.w,
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    mediumBlackText(
                        AppStrings.schedule, AppColors.majorelle_blue_color),
                  ],
                ),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    giftrideModal(context);
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.alarm,
                        color: AppColors.majorelle_blue_color,
                        size: 14.w,
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      mediumBlackText(
                          AppStrings.gift_ride, AppColors.majorelle_blue_color),
                    ],
                  )),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          majorelleBlueButton(AppStrings.select_qwikio_green, onClick),
        ],
      ),
    ),
  );
}

Widget covidSafetyModal(Function onClick) {
  bool value = false;
  return StatefulBuilder(builder: (context, setState) {
    return Container(
      height: 400.h,
      decoration: modalCardDecoration,
      child: Padding(
        padding: EdgeInsets.all(20.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                mediumBlackText(
                    AppStrings.safety_comunity, AppColors.raisin_black),
                SizedBox(
                  height: 10.h,
                ),
                dialogNormalText(AppStrings.before_confirm_make_sure,
                    AppColors.outer_space_color),
              ],
            ),
            SizedBox(
              height: 100.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      dotCircle(),
                      SizedBox(
                        width: 20.w,
                      ),
                      dialogNormalText(
                          AppStrings.wear_mask, AppColors.outer_space_color)
                    ],
                  ),
                  Row(
                    children: [
                      dotCircle(),
                      SizedBox(
                        width: 20.w,
                      ),
                      dialogNormalText(
                          AppStrings.back_seat, AppColors.outer_space_color)
                    ],
                  ),
                  Row(
                    children: [
                      dotCircle(),
                      SizedBox(
                        width: 20.w,
                      ),
                      Flexible(
                        child: Column(
                          children: [
                            dialogNormalText(AppStrings.covid_symptoms,
                                AppColors.outer_space_color),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Checkbox(
                  value: value,
                  activeColor: Colors.blue,
                  onChanged: (bool? newValue) {
                    setState(() {
                      value = newValue!;
                    });
                  },
                ),
                Text(
                  AppStrings.checkbox_wearing_mask,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 10.sp,
                    color: AppColors.dark_grey_color,
                  ),
                ),
              ],
            ),
            majorelleBlueButton(AppStrings.confirm, onClick),
          ],
        ),
      ),
    );
  });
}

Widget findingARideModal(onClick) {
  double _value = 40.0;
  return StatefulBuilder(builder: (context, setState) {
    return Container(
      height: 400.h,
      decoration: modalCardDecoration,
      child: Padding(
        padding: EdgeInsets.all(20.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                mediumRaisenBlackText("Finding a ride"),
                TextButton(
                  onPressed: onClick,
                  child: dialogNormalText(
                      AppStrings.cancel_ride, AppColors.majorelle_blue_color),
                )
              ],
            ),
            SfSlider(
              min: 0.0,
              max: 100.0,
              value: _value,
              activeColor: AppColors.majorelle_blue_color,
              inactiveColor: AppColors.majorelle_blue_color.withOpacity(0.1),
              thumbIcon:
                  Icon(Icons.send, size: 7.w, color: AppColors.lightcolor),
              minorTicksPerInterval: 1,
              onChanged: (value) {
                setState(() {
                  _value = value;
                });
              },
            ),
            Container(
              height: 165.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.r),
                  color: AppColors.lotion_color),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 30.w),
                        child: complexDotLine(Axis.horizontal, 25.h),
                      ),
                      complexDotLine(Axis.vertical, 30.h),
                      CircleAvatar(
                        radius: 8.h,
                        backgroundColor: AppColors.majorelle_blue_color,
                        child: Transform.rotate(
                            angle: 300,
                            child: Icon(
                              Icons.send,
                              color: AppColors.lightcolor,
                              size: 9.w,
                              textDirection: TextDirection.rtl,
                            )),
                      ),
                      complexDotLine(Axis.vertical, 30.h),
                      Padding(
                        padding: EdgeInsets.only(left: 30.w),
                        child: complexDotLine(Axis.horizontal, 25.h),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(right: 30.w),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ridePickDropLocationCard(
                            Icons.radio_button_checked,
                            AppColors.majorelle_blue_color,
                            AppColors.lightcolor,
                            AppStrings.pickup,
                            AppStrings.current_location,
                            SizedBox(),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          ridePickDropLocationCard(
                              Icons.location_on,
                              AppColors.lightcolor,
                              AppColors.green_color,
                              AppStrings.drop_off,
                              AppStrings.current_location_address,
                              SizedBox()),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 60.h,
              decoration: lightCardDecoration,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 45.h,
                    width: 45.w,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('assets/images/radialcar.png'),
                            fit: BoxFit.cover)),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          dialogNormalText(AppStrings.qwikio_green,
                              AppColors.auth_detailscolor),
                          SizedBox(
                            width: 30.w,
                          ),
                          smallSemiboldText(AppStrings.ride_time),
                        ],
                      ),
                      smallSemiboldText(AppStrings.good_ride)
                    ],
                  ),
                  Container(
                    height: 40.h,
                    width: 70.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                      color: AppColors.green_color.withOpacity(0.1),
                    ),
                    child: Center(
                        child: mediumBlackText(
                            AppStrings.usd, AppColors.auth_detailscolor)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  });
}

Widget cancelRideBeforeBookedModal(Function onClick) {
  return Container(
    height: 230.h,
    decoration: modalCardDecoration,
    child: Padding(
      padding: EdgeInsets.all(20.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          mediumBlackText(
              AppStrings.cancel_confirmation, AppColors.raisin_black),
          Column(
            children: [
              dialogNormalText(
                  AppStrings.cancel_des_one, AppColors.outer_space_color),
              dialogNormalText(
                  AppStrings.cancel_des_two, AppColors.outer_space_color),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              lightButton(150.w, AppStrings.keep_searching,
                  AppColors.majorelle_blue_color, () {}),
              SizedBox(
                width: 20.w,
              ),
              Expanded(
                  child: majorelleBlueButton(AppStrings.cancel_trip, onClick)),
            ],
          )
        ],
      ),
    ),
  );
}

Widget cancelRideAfter5minBookedModal(Function onClick) {
  return Container(
    height: 280.h,
    decoration: modalCardDecoration,
    child: Padding(
      padding: EdgeInsets.all(20.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          mediumBlackText(
              AppStrings.cancel_confirmation, AppColors.raisin_black),
          Column(
            children: [
              dialogNormalText(
                  AppStrings.cancel_fine_des_one, AppColors.outer_space_color),
              dialogNormalText(
                  AppStrings.cancel_fine_des_two, AppColors.outer_space_color),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          lightButton(double.infinity, AppStrings.accept_cancel_fee,
              AppColors.majorelle_blue_color, () {
            Get.back();
          }),
          majorelleBlueButton(AppStrings.no_continue_trip, onClick),
        ],
      ),
    ),
  );
}

confirmScheduleModal(context) {
  return showModalBottomSheet(
      shape: shape,
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return Container(
          height: 500.h,
          decoration: modalCardDecoration,
          child: Padding(
            padding: EdgeInsets.all(20.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    mediumRaisenBlackText(AppStrings.confirm_schedule),
                    TextButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: dialogNormalText(AppStrings.cancel_ride,
                          AppColors.majorelle_blue_color),
                    )
                  ],
                ),
                dialogNormalText(AppStrings.schedule_booking_confirmation,
                    AppColors.space_cadet_color),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.calendar_today,
                      size: 25.w,
                      color: AppColors.green_color,
                    ),
                    mediumBlackText(
                        AppStrings.date, AppColors.auth_detailscolor),
                    Icon(
                      Icons.alarm,
                      size: 25.w,
                      color: AppColors.green_color,
                    ),
                    mediumBlackText(
                        AppStrings.time, AppColors.auth_detailscolor),
                  ],
                ),
                Container(
                  height: 165.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.r),
                      color: AppColors.lotion_color),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 30.w),
                            child: complexDotLine(Axis.horizontal, 25.h),
                          ),
                          complexDotLine(Axis.vertical, 30.h),
                          CircleAvatar(
                            radius: 8.h,
                            backgroundColor: AppColors.majorelle_blue_color,
                            child: Transform.rotate(
                                angle: 300,
                                child: Icon(
                                  Icons.send,
                                  color: AppColors.lightcolor,
                                  size: 9.w,
                                  textDirection: TextDirection.rtl,
                                )),
                          ),
                          complexDotLine(Axis.vertical, 30.h),
                          Padding(
                            padding: EdgeInsets.only(left: 30.w),
                            child: complexDotLine(Axis.horizontal, 25.h),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(right: 20.w),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ridePickDropLocationCard(
                                  Icons.radio_button_checked,
                                  AppColors.majorelle_blue_color,
                                  AppColors.lightcolor,
                                  AppStrings.pickup,
                                  AppStrings.current_location,
                                  SizedBox()),
                              SizedBox(
                                height: 20.h,
                              ),
                              ridePickDropLocationCard(
                                  Icons.location_on,
                                  AppColors.lightcolor,
                                  AppColors.green_color,
                                  AppStrings.drop_off,
                                  AppStrings.current_location_address,
                                  SizedBox()),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                majorelleBlueButton(AppStrings.confirm, () {
                  Navigator.of(context).pop();
                  showDialog(
                      context: context,
                      builder: (BuildContext context) => scheduledBookedDialog);
                })
              ],
            ),
          ),
        );
      });
}

giftrideModal(context) {
  return showModalBottomSheet(
      shape: shape,
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return Container(
            height: ScreenUtil().screenHeight,
            decoration: modalCardDecoration,
            child: GiftRideScreen());
      });
}

driverOnTheWayModal(context) {
  return Container(
    height: 400.h,
    decoration: modalCardDecoration,
    child: Padding(
      padding: EdgeInsets.all(20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              mediumRaisenBlackText(AppStrings.meet_pickup_point),
              InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                  showModalBottomSheet(
                    shape: shape,
                    context: context,
                    builder: (context) => addPointsModal(context),
                  );
                },
                child: Container(
                  height: 30.h,
                  width: 75.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                      color: AppColors.green_color),
                  child: Center(
                    child: dialogNormalText(
                        AppStrings.ride_time, AppColors.lightcolor),
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 80.h,
            decoration: lightCardDecoration,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 55.h,
                  width: 55.w,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/images/loginprofile.png'),
                          fit: BoxFit.cover)),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    mediumBlackText(
                        AppStrings.driver_name, AppColors.raisin_black),
                    Row(
                      children: [
                        Container(
                          height: 25.h,
                          width: 25.w,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/radialcar.png'),
                                  fit: BoxFit.contain)),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        smallMediumText(
                            AppStrings.car_brand, AppColors.green_color),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    starIcon(Icons.star, 14.w),
                    SizedBox(
                      width: 5.w,
                    ),
                    dialogNormalText("4.2", AppColors.auth_detailscolor)
                  ],
                )
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 45.h,
                  child: TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.r),
                          borderSide: BorderSide.none),
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 25.w, vertical: 25.h),
                      filled: true,
                      fillColor:
                          AppColors.majorelle_blue_color.withOpacity(0.05),
                      hintText: AppStrings.msg_driver_hint,
                      hintStyle: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.5,
                        color: AppColors.textfield_hintcolor,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 20.w,
              ),
              Container(
                height: 40.h,
                width: 40.w,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.majorelle_blue_color),
                child: Center(
                    child: Icon(
                  Icons.call,
                  color: AppColors.lightcolor,
                  size: 25.w,
                )),
              ),
            ],
          ),
          Container(
            height: 60.h,
            decoration: lightCardDecoration,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 35.h,
                  width: 35.w,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: AppColors.green_color),
                  child: Center(
                      child: Icon(
                    Icons.location_on,
                    color: AppColors.lightcolor,
                    size: 18.w,
                  )),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    smallSemiboldText(AppStrings.drop_off),
                    dialogNormalText(AppStrings.current_location_address,
                        AppColors.auth_detailscolor),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    smallMediumText(
                        AppStrings.add_or_change, AppColors.green_color),
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: smallMediumText(AppStrings.cancel_trip,
                          AppColors.majorelle_blue_color),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

addPointsModal(context) {
  return Container(
    height: 550.h,
    decoration: modalCardDecoration,
    child: Padding(
      padding: EdgeInsets.all(20.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              mediumRaisenBlackText(AppStrings.change_dropoff),
              TextButton(
                onPressed: () {
                  Get.back();
                },
                child: dialogBlueText(AppStrings.cancel),
              ),
            ],
          ),
          SizedBox(
            height: 170.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    radioButtonChecked(),
                    simpleDotLine(),
                    radioButtonChecked(),
                    simpleDotLine(),
                    radioButtonChecked(),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 3.h, bottom: 3.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      mediumBlackText(AppStrings.current_location,
                          AppColors.auth_detailscolor),
                      mediumBlackText(AppStrings.current_location_address,
                          AppColors.auth_detailscolor),
                      mediumBlackText(
                          AppStrings.add_point, AppColors.green_color)
                    ],
                  ),
                ),
                closeBackButton(20.h, 20.h, 10.w, () {
                  Get.back();
                }),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          majorelleBlueButton(AppStrings.back, () {
            Navigator.of(context).pop();
            Get.toNamed(addPoints);
          }),
          SizedBox(
            height: 80.h,
          ),
        ],
      ),
    ),
  );
}

Widget changeingPriceModal() {
  return Container(
    height: 280.h,
    decoration: modalCardDecoration,
    child: Padding(
      padding: EdgeInsets.all(20.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          mediumBlackText(AppStrings.price_change, AppColors.raisin_black),
          Column(
            children: [
              dialogNormalText(
                  AppStrings.price_change_des_one, AppColors.outer_space_color),
              dialogNormalText(
                  AppStrings.price_change_des_two, AppColors.outer_space_color),
            ],
          ),
          mediumHeadingText("\$63.45", AppColors.green_color),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              lightButton(150.w, AppStrings.cancel,
                  AppColors.majorelle_blue_color, () {}),
              SizedBox(
                width: 20.w,
              ),
              Expanded(child: majorelleBlueButton(AppStrings.confirm, () {})),
            ],
          )
        ],
      ),
    ),
  );
}

//express
Widget expressModal(Function onClick) {
  return Container(
    height: 310.h,
    decoration: modalCardDecoration,
    child: Padding(
      padding: EdgeInsets.all(20.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Send Package with Qwikio Express",
            style: TextStyle(
              fontSize: 16.sp,
              color: AppColors.auth_detailscolor,
              letterSpacing: 0.4,
              fontWeight: FontWeight.w600,
            ),
          ),
          dialogNormalText(
              "Get it delivered in the time it takes to drive there",
              AppColors.spanish_grey_color),
          majorelleBlueButton('Send a package', () => Get.toNamed(sender)),
          mediumBlackText("Receive a package", AppColors.majorelle_blue_color)
        ],
      ),
    ),
  );
}

Widget confirmSenderModal(Function onClick) {
  return Container(
    height: 310.h,
    decoration: modalCardDecoration,
    child: Padding(
      padding: EdgeInsets.all(20.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          mediumBlackText("Confirm Details", AppColors.raisin_black),
          Container(
            height: 140.h,
            child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(top: 10.h),
                    child: Container(
                      height: 60.h,
                      decoration: lightCardDecoration,
                      child: Padding(
                        padding: EdgeInsets.all(10.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 35.h,
                                  width: 35.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.w),
                                    border: Border.all(
                                        width: 1, color: AppColors.green_color),
                                  ),
                                  child: Center(
                                    child: Container(
                                      height: 20.h,
                                      width: 20.w,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/icons/medium.png'),
                                              fit: BoxFit.fill)),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 20.w,
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    mediumRaisenBlackText("Medium"),
                                    smallMediumText("between 1t and 5t",
                                        AppColors.outer_space_color)
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    mediumRaisenBlackText("USD 2500"),
                                    smallMediumText(
                                        "2x pts", AppColors.outer_space_color)
                                  ],
                                ),
                                SizedBox(
                                  width: 20.w,
                                ),
                                Container(
                                  height: 26.h,
                                  width: 26.w,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppColors.majorelle_blue_color
                                        .withOpacity(0.1),
                                  ),
                                  child: Center(
                                      child: Icon(
                                    Icons.keyboard_arrow_down,
                                    size: 14.w,
                                    color: AppColors.majorelle_blue_color,
                                  )),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          ),
          SizedBox(
            height: 20.h,
          ),
          majorelleBlueButton('Confirm Pickup', onClick),
        ],
      ),
    ),
  );
}

Widget selectSizeModal(Function onClick) {
  bool value = false;
  return Container(
    height: 370.h,
    decoration: modalCardDecoration,
    child: Padding(
      padding: EdgeInsets.all(20.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          mediumBlackText("Select Size", AppColors.raisin_black),
          Container(
            height: 210.h,
            child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(top: 10.h),
                    child: StatefulBuilder(
                      builder: (context, setState) {
                        return InkWell(
                          onTap: () {
                            setState(
                              () => value = !value,
                            );
                          },
                          child: Container(
                            height: 60.h,
                            decoration: value
                                ? BoxDecoration(
                                    borderRadius: BorderRadius.circular(6.r),
                                    border: Border.all(
                                        width: 1, color: AppColors.green_color),
                                    color: AppColors.lightcolor)
                                : lightCardDecoration,
                            child: Padding(
                              padding: EdgeInsets.all(10.w),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: 35.h,
                                        width: 35.w,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5.w),
                                          border: Border.all(
                                              width: 1,
                                              color: AppColors.green_color),
                                        ),
                                        child: Center(
                                          child: Container(
                                            height: 20.h,
                                            width: 20.w,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        'assets/icons/medium.png'),
                                                    fit: BoxFit.fill)),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20.w,
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          mediumRaisenBlackText("Medium"),
                                          smallMediumText("Less than 1t",
                                              AppColors.outer_space_color)
                                        ],
                                      ),
                                    ],
                                  ),
                                  Container(
                                    height: 30.h,
                                    width: 85.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.w),
                                      color: AppColors.green_color
                                          .withOpacity(0.2),
                                    ),
                                    child: Center(
                                      child: mediumRaisenBlackText("USD 2500"),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  );
                }),
          ),
          SizedBox(
            height: 20.h,
          ),
          majorelleBlueButton('Confirm Pickup', onClick),
        ],
      ),
    ),
  );
}

Widget pickupSenderModal(Function onClick) {
  return Container(
    height: 250.h,
    decoration: modalCardDecoration,
    child: Padding(
      padding: EdgeInsets.all(20.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: mediumBlackText(
                "Confirm your pickup spot", AppColors.dialog_divider_color),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              mediumBlackText("2885 Brookdale Dr", AppColors.auth_detailscolor),
              Container(
                height: 35.h,
                width: 85.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.w),
                  color: AppColors.green_color.withOpacity(0.2),
                ),
                child: Center(
                  child: mediumRaisenBlackText("Search"),
                ),
              ),
            ],
          ),
          majorelleBlueButton('Confirm Pickup', onClick),
        ],
      ),
    ),
  );
}

Widget reviewGuidelineModal() {
  return Container(
    height: 450.h,
    decoration: modalCardDecoration,
    child: Padding(
      padding: EdgeInsets.all(20.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              mediumBlackText(
                  "Review package guidelines", AppColors.raisin_black),
              SizedBox(
                height: 10.h,
              ),
              dialogNormalText(
                  "For a successful delivery. Make sure your package is",
                  AppColors.dialog_divider_color),
              SizedBox(
                height: 15.h,
              ),
              dialogNormalText(
                  "30 Pounds or less", AppColors.dialog_divider_color),
              Padding(
                padding: EdgeInsets.only(top: 5.h, bottom: 5.h),
                child: dialogNormalText(
                    "\$ 100 or less in value", AppColors.dialog_divider_color),
              ),
              dialogNormalText("securely sealed and ready for pickup",
                  AppColors.dialog_divider_color),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              mediumBlackText("Prohibited items", AppColors.raisin_black),
              SizedBox(
                height: 10.h,
              ),
              dialogNormalText(
                  "Alcohol , medication , recreational drugs , firearms, and dangerous or illegal items , Violations may be reported to authorities",
                  AppColors.dialog_divider_color),
            ],
          ),
          Column(
            children: [
              lightButton(double.infinity, "See all prohibited items",
                  AppColors.auth_detailscolor, () {}),
              SizedBox(
                height: 10.h,
              ),
              majorelleBlueButton('Got It', () => Get.toNamed(reciever)),
            ],
          ),
        ],
      ),
    ),
  );
}

//book-bundle