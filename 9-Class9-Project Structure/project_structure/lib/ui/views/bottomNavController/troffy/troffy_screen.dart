// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

import '../../../../const/app_colors.dart';
import '../../../../const/app_strings.dart';
import '../../../route/route.dart';
import '../../../styles/styles.dart';
import '../../../widgets/app_buttons.dart';
import '../../../widgets/app_card.dart';
import '../../../widgets/app_icons.dart';
import '../../../widgets/app_text.dart';

class TroffyScreen extends StatefulWidget {
  @override
  State<TroffyScreen> createState() => _TroffyScreenState();
}

class _TroffyScreenState extends State<TroffyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppColors.cultured_background_color,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  showModalBottomSheet(
                    shape: shape,
                    context: context,
                    builder: (context) => _confirmDropoffModal(),
                  );
                },
                child: Text("Confirm Dropoff")),
            TextButton(
                onPressed: () {
                  showModalBottomSheet(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    context: context,
                    builder: (context) => _cancelRideBeforeBookedModal(),
                  );
                },
                child: Text("Cancel Ride Before Booked")),
            TextButton(
                onPressed: () {
                  showModalBottomSheet(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    context: context,
                    builder: (context) => _cancelRideAfter5minBookedModal(),
                  );
                },
                child: Text("Cancel Ride After 5min Booked")),
            TextButton(
                onPressed: () {
                  showModalBottomSheet(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    context: context,
                    builder: (context) => _changeingPriceModal(),
                  );
                },
                child: Text("Changeing Price Modal")),
            TextButton(
                onPressed: () {
                  showModalBottomSheet(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    context: context,
                    builder: (context) => _cancelRideAfterBookedModal(),
                  );
                },
                child: Text("Cancel Ride After Booked Modal")),
            TextButton(
                onPressed: () {
                  showModalBottomSheet(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    context: context,
                    builder: (context) => _addPointsModal(),
                  );
                },
                child: Text("Add Points Modal")),
            TextButton(
                onPressed: () {
                  showModalBottomSheet(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      context: context,
                      builder: (context) => _covidSafetyModal());
                },
                child: Text("Covid Safety Modal")),
            TextButton(
                onPressed: () {
                  showModalBottomSheet(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      context: context,
                      builder: (context) => _selectPodModal());
                },
                child: Text("Select Pod Modal")),
            TextButton(
                onPressed: () {
                  showModalBottomSheet(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      context: context,
                      builder: (context) => _noCarsAvailableModal());
                },
                child: Text("No Cars Available Modal")),
            TextButton(
                onPressed: () {
                  showModalBottomSheet(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      context: context,
                      builder: (context) => _driverOnTheWayModal());
                },
                child: Text("Driver On The Way Modal")),
          ],
        ));
  }
}

//Confirm Dropoff
Widget _confirmDropoffModal() {
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
              mediumRaisenBlackText("Confirm Dropoff"),
              TextButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: dialogBlueText("Cancel"))
            ],
          ),
          homeLocationCard(AppColors.green_color, AppStrings.dropoff_title,
              AppStrings.dropoff_address, Icons.favorite_border),
          majorelleBlueButton("Confirm dropoff", () {})
        ],
      ),
    ),
  );
}

//cancel ride before booking
Widget _cancelRideBeforeBookedModal() {
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
                  child: majorelleBlueButton(AppStrings.cancel_trip, () {})),
            ],
          )
        ],
      ),
    ),
  );
}

//cancel ride after 5mins booking
Widget _cancelRideAfter5minBookedModal() {
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
          majorelleBlueButton(AppStrings.no_continue_trip, () {}),
        ],
      ),
    ),
  );
}

//changing price
Widget _changeingPriceModal() {
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

//cancel ride after booking
Widget _cancelRideAfterBookedModal() {
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
              dialogNormalText(AppStrings.cancel_after_booked_des_one,
                  AppColors.outer_space_color),
              dialogNormalText(AppStrings.cancel_after_booked_des_two,
                  AppColors.outer_space_color),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              lightButton(150.w, AppStrings.go_back,
                  AppColors.majorelle_blue_color, () {}),
              SizedBox(
                width: 20.w,
              ),
              Expanded(
                  child: majorelleBlueButton(AppStrings.cancel_trip, () {})),
            ],
          )
        ],
      ),
    ),
  );
}

//add points
Widget _addPointsModal() {
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
                  child: dialogBlueText(AppStrings.cancel))
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
            Get.back();
          }),
          SizedBox(
            height: 80.h,
          ),
        ],
      ),
    ),
  );
}

//covid saferty
Widget _covidSafetyModal() {
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
              MyCheckBox(),
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
          majorelleBlueButton(AppStrings.confirm, () {}),
        ],
      ),
    ),
  );
}

class MyCheckBox extends StatefulWidget {
  @override
  State<MyCheckBox> createState() => _MyCheckBoxState();
}

class _MyCheckBoxState extends State<MyCheckBox> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: value,
      activeColor: Colors.blue,
      onChanged: (bool? newValue) {
        setState(() {
          value = newValue!;
        });
      },
    );
  }
}

//select pod
Widget _selectPodModal() {
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
                  onPressed: () {},
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
                  )),
              TextButton(
                  onPressed: () {
                    Get.toNamed(giftride);
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
          majorelleBlueButton(AppStrings.select_qwikio_green, () {}),
        ],
      ),
    ),
  );
}

//no cars available
Widget _noCarsAvailableModal() {
  return Container(
    height: 550.h,
    decoration: modalCardDecoration,
    child: Padding(
      padding: EdgeInsets.all(30.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          mediumRaisenBlackText(AppStrings.choose_ride),
          Center(
              child: mediumHeadingText(
                  AppStrings.no_cars_available, AppColors.darkcolor)),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () {},
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
                          mediumBlackText(AppStrings.schedule,
                              AppColors.majorelle_blue_color),
                        ],
                      )),
                  TextButton(
                      onPressed: () {
                        Get.toNamed(giftride);
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
                          mediumBlackText(AppStrings.gift_ride,
                              AppColors.majorelle_blue_color),
                        ],
                      )),
                ],
              ),
              Container(
                height: 46.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(7.r)),
                ),
                child: Material(
                  borderRadius: BorderRadius.all(Radius.circular(7.r)),
                  color: AppColors.majorelle_blue_color.withOpacity(0.2),
                  child: InkWell(
                    onTap: () {},
                    splashColor: AppColors.lightcolor,
                    child: Center(
                      child: Text(
                        AppStrings.select_qwikio_green,
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: AppColors.lightcolor,
                          letterSpacing: 0.6,
                          fontWeight: FontWeight.w500,
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
    ),
  );
}

//driver on the way
Widget _driverOnTheWayModal() {
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
              Container(
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
                    mediumBlackText(AppStrings.driver_name, AppColors.raisin_black),
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
                        smallMediumText(AppStrings.car_brand, AppColors.green_color),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: AppColors.green_color,
                      size: 14.w,
                    ),
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
                    smallMediumText(AppStrings.add_or_change, AppColors.green_color),
                    InkWell(
                      onTap: (){
                        Get.back();
                      },
                      child: smallMediumText(
                          AppStrings.cancel_trip, AppColors.majorelle_blue_color),
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