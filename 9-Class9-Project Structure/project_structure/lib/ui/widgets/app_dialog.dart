// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

import '../../const/app_colors.dart';
import '../../const/app_strings.dart';
import '../route/route.dart';
import '../styles/styles.dart';
import 'app_bottom_modals.dart';
import 'app_buttons.dart';
import 'app_icons.dart';
import 'app_text.dart';

authFbDialog(context) {
  return Dialog(
    backgroundColor: AppColors.lightcolor,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(7.r)), //this right here
    child: SizedBox(
      height: 260.h,
      width: 245.w,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            dialogBlueText(AppStrings.signup),
            Divider(
              thickness: 1,
              color: AppColors.dialog_divider_color.withOpacity(0.25),
            ),
            Container(
              height: 50.h,
              width: 50.w,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/images/loginprofile.png'),
                      fit: BoxFit.cover)),
            ),
            Text(
              AppStrings.user_name,
              style: TextStyle(
                fontSize: 16.sp,
                color: AppColors.auth_detailscolor,
                letterSpacing: 0.8,
                fontWeight: FontWeight.w500,
              ),
            ),
            smallRegularText(
                AppStrings.signin_account_easier, AppColors.auth_detailscolor),
            SizedBox(
              height: 10.h,
            ),
            Container(
              height: 48.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(7.r)),
              ),
              child: Material(
                borderRadius: BorderRadius.all(Radius.circular(7.r)),
                color: AppColors.majorelle_blue_color,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context, rootNavigator: true).pop();

                    Get.toNamed(bottomnav);
                  },
                  splashColor: AppColors.lightcolor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                          height: 22.h,
                          width: 22.h,
                          child: Image.asset(
                            'assets/icons/fb.png',
                            fit: BoxFit.contain,
                            color: AppColors.lightcolor,
                          )),
                      Row(
                        children: [
                          dialogNormalText(AppStrings.continue_with_fb,
                              AppColors.lightcolor),
                          SizedBox(
                            width: 10.w,
                          ),
                          dialogForwardIcon()
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ]),
    ),
  );
}

authGoogleDialog(context) {
  return Dialog(
    backgroundColor: AppColors.lightcolor,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(7.r)), //this right here
    child: SizedBox(
      height: 275.h,
      width: 245.w,
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <
              Widget>[
        dialogBlueText(AppStrings.signup),
        Divider(
          thickness: 1,
          color: AppColors.dialog_divider_color.withOpacity(0.25),
        ),
        Padding(
          padding: EdgeInsets.only(top: 8.h, bottom: 8.h),
          child: dialogNormalText(
              AppStrings.choose_account, AppColors.auth_detailscolor),
        ),
        Padding(
          padding:
              EdgeInsets.only(left: 20.w, right: 20.w, top: 5.h, bottom: 5.h),
          child: Container(
            height: 45.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.r),
              color: AppColors.lightcolor,
              // ignore: prefer_const_literals_to_create_immutables
              boxShadow: [
                // ignore: prefer_const_constructors
                BoxShadow(
                  color: AppColors.shadow_color,
                  offset: const Offset(0, 20),
                  blurRadius: 70,
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 25.w),
              child: Row(
                children: [
                  Container(
                    height: 24.h,
                    width: 24.h,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('assets/images/loginprofile.png'),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      smallSemiboldText(AppStrings.user_name),
                      smallRegularText(
                          AppStrings.user_email, AppColors.auth_detailscolor)
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding:
              EdgeInsets.only(left: 20.w, right: 20.w, top: 5.h, bottom: 5.h),
          child: Container(
            height: 45.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.r),
              color: AppColors.lightcolor,
              // ignore: prefer_const_literals_to_create_immutables
              boxShadow: [
                // ignore: prefer_const_constructors
                BoxShadow(
                  color: AppColors.shadow_color,
                  offset: const Offset(0, 20),
                  blurRadius: 70,
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 25.w),
              child: Row(
                children: [
                  Container(
                    height: 24.h,
                    width: 24.h,
                    decoration: BoxDecoration(
                        color: AppColors.dialog_divider_color.withOpacity(0.3),
                        shape: BoxShape.circle),
                    child: Center(
                      child: Icon(
                        Icons.person_outlined,
                        size: 20.w,
                        color: AppColors.lightcolor,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  smallSemiboldText(AppStrings.use_another_account),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Container(
          height: 48.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(7.r)),
          ),
          child: Material(
            borderRadius: BorderRadius.all(Radius.circular(7.r)),
            color: AppColors.majorelle_blue_color,
            child: InkWell(
              onTap: () {
                Navigator.of(context, rootNavigator: true).pop();
                Get.toNamed(bottomnav);
              },
              splashColor: AppColors.lightcolor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                      height: 22.h,
                      width: 22.h,
                      child: Image.asset(
                        'assets/icons/google.png',
                        fit: BoxFit.contain,
                        color: AppColors.lightcolor,
                      )),
                  Row(
                    children: [
                      dialogNormalText(AppStrings.continue_with_google,
                          AppColors.lightcolor),
                      SizedBox(
                        width: 10.w,
                      ),
                      dialogForwardIcon()
                    ],
                  ),
                ],
              ),
            ),
          ),
        )
      ]),
    ),
  );
}

//share ride
shareRideDialog(context) {
  return Dialog(
    backgroundColor: AppColors.cultured_background_color,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.r)), //this right here
    child: SizedBox(
      height: 410.h,
      width: 325.w,
      child: Padding(
        padding: EdgeInsets.all(15.w),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                height: 210.h,
                width: 285.w,
                decoration: lightCardDecoration,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 80.h,
                      width: 80.w,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image:
                                  AssetImage('assets/images/radialcircle.png'),
                              fit: BoxFit.cover)),
                    ),
                    mediumBlackText(
                        AppStrings.qwikio_green, AppColors.space_cadet_color),
                    dialogNormalText(
                        AppStrings.good_ride, AppColors.davys_grey_color),
                    mediumBlackText(
                        AppStrings.share_ride_price, AppColors.green_color),
                  ],
                ),
              ),
              Column(
                children: [
                  dialogNormalText(AppStrings.reinform_share_ride,
                      AppColors.davys_grey_color),
                  dialogNormalText(AppStrings.reinform_share_ride_number,
                      AppColors.auth_detailscolor),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  lightButton(
                      110.w, AppStrings.cancel, AppColors.auth_detailscolor,
                      () {
                    Get.back();
                  }),
                  SizedBox(
                    width: 130.w,
                    child: majorelleBlueButton(AppStrings.confirm, () {
                      Navigator.of(context).pop();
                      showDialog(
                          context: context,
                          // builder: (BuildContext context) => shareRideDialog);
                          builder: (BuildContext context) =>
                              successfullyBookedDialog(context));
                    }),
                  ),
                ],
              )
            ]),
      ),
    ),
  );
}

//gifted ride booked successfully
successfullyBookedDialog(context) {
  return Dialog(
    backgroundColor: AppColors.cultured_background_color,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.r)), //this right here
    child: SizedBox(
      height: 310.h,
      width: 325.w,
      child: Padding(
        padding: EdgeInsets.all(15.w),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                children: [
                  Container(
                    height: 80.h,
                    width: 80.w,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('assets/icons/success.png'),
                            fit: BoxFit.contain)),
                  ),
                  mediumHeadingText(
                      AppStrings.success, AppColors.auth_detailscolor),
                  dialogNormalText(AppStrings.gifted_ride_booked,
                      AppColors.davys_grey_color),
                ],
              ),
              majorelleBlueButton(AppStrings.okay, () {
                Navigator.of(context).pop();
                showDialog(
                    context: context,
                    // builder: (BuildContext context) => shareRideDialog);
                    builder: (BuildContext context) =>
                        recieveRideDialog(context));
              })
            ]),
      ),
    ),
  );
}

//gift ride
Dialog giftRideDialog = Dialog(
  backgroundColor: AppColors.cultured_background_color,
  shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.r)), //this right here
  child: SizedBox(
    height: 300.h,
    width: 325.w,
    child: Padding(
      padding: EdgeInsets.all(15.w),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: <
              Widget>[
        Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: TextButton(
                onPressed: () {
                  Get.back();
                },
                child: Container(
                  height: 30.h,
                  width: 30.h,
                  decoration: BoxDecoration(
                      color: AppColors.majorelle_blue_color.withOpacity(0.1),
                      shape: BoxShape.circle),
                  child: Center(
                    child: Icon(
                      Icons.close,
                      size: 14.w,
                      color: AppColors.majorelle_blue_color,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 70.h,
              width: 70.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  image: DecorationImage(
                      image: AssetImage('assets/images/loginprofile.png'),
                      fit: BoxFit.cover)),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            dialogNormalText(
                AppStrings.gift_ride_confirm_one, AppColors.davys_grey_color),
            dialogNormalText(
                AppStrings.gift_ride_confirm_two, AppColors.davys_grey_color),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            lightButton(110.w, AppStrings.decline, AppColors.auth_detailscolor,
                () {
              Get.back();
            }),
            SizedBox(
              width: 130.w,
              child: majorelleBlueButton(AppStrings.accept, () {}),
            ),
          ],
        )
      ]),
    ),
  ),
);

// scheduled booked successfully
Dialog scheduledBookedDialog = Dialog(
  backgroundColor: AppColors.cultured_background_color,
  shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.r)), //this right here
  child: SizedBox(
    height: 310.h,
    width: 325.w,
    child: Padding(
      padding: EdgeInsets.all(15.w),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Column(
              children: [
                Container(
                  height: 80.h,
                  width: 80.w,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/icons/success.png'),
                          fit: BoxFit.contain)),
                ),
                mediumHeadingText(
                    AppStrings.success, AppColors.auth_detailscolor),
                dialogNormalText(
                    AppStrings.schedule_booked, AppColors.davys_grey_color),
              ],
            ),
            majorelleBlueButton(AppStrings.okay, () {})
          ]),
    ),
  ),
);

// refund details
Dialog refundDetailsDialog = Dialog(
  backgroundColor: AppColors.cultured_background_color,
  shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.r)), //this right here
  child: SizedBox(
    height: 250.h,
    width: 325.w,
    child: Padding(
      padding: EdgeInsets.all(15.w),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            mediumHeadingText(
                AppStrings.refund_details, AppColors.auth_detailscolor),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    AppStrings.refund_description,
                    style: TextStyle(
                      fontSize: 11.sp,
                      color: AppColors.frosted_grey_color,
                      letterSpacing: 0.6,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            majorelleBlueButton(AppStrings.back_to_home, () {})
          ]),
    ),
  ),
);

// no driver available
driverAvailableDetailsDialog(context) {
  return Dialog(
    backgroundColor: AppColors.cultured_background_color,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.r)), //this right here
    child: SizedBox(
      height: 300.h,
      width: 325.w,
      child: Padding(
        padding: EdgeInsets.all(15.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(children: <Widget>[
              Container(
                height: 50.h,
                width: 50.w,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/icons/notfound.png'),
                        fit: BoxFit.contain)),
              ),
              mediumHeadingText(
                  AppStrings.no_driver_available, AppColors.auth_detailscolor),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      AppStrings.sorry_try_again,
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: AppColors.silver_color,
                        letterSpacing: 0.6,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ]),
            majorelleBlueButton(AppStrings.back, () {
              Navigator.of(context).pop();

              showModalBottomSheet(
                shape: shape,
                context: context,
                builder: (context) => driverOnTheWayModal(context),
              );
            })
          ],
        ),
      ),
    ),
  );
}

recieveRideDialog(context) {
  return Dialog(
    backgroundColor: AppColors.cultured_background_color,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.r)), //this right here
    child: SizedBox(
      height: 300.h,
      width: 325.w,
      child: Padding(
        padding: EdgeInsets.all(15.w),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: <
                Widget>[
          Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    height: 30.h,
                    width: 30.h,
                    decoration: BoxDecoration(
                        color: AppColors.majorelle_blue_color.withOpacity(0.1),
                        shape: BoxShape.circle),
                    child: Center(
                      child: Icon(
                        Icons.close,
                        size: 14.w,
                        color: AppColors.majorelle_blue_color,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 70.h,
                width: 70.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    image: DecorationImage(
                        image: AssetImage('assets/images/loginprofile.png'),
                        fit: BoxFit.cover)),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              dialogNormalText(
                  AppStrings.gift_ride_confirm_one, AppColors.davys_grey_color),
              dialogNormalText(
                  AppStrings.gift_ride_confirm_two, AppColors.davys_grey_color),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              lightButton(
                  110.w, AppStrings.decline, AppColors.auth_detailscolor, () {
                Navigator.of(context).pop();

                Get.back();
              }),
              SizedBox(
                width: 130.w,
                child: majorelleBlueButton(AppStrings.accept, () {}),
              ),
            ],
          )
        ]),
      ),
    ),
  );
}

//booking confirmation
bookingConfirmationDialog(context) {
  return Dialog(
    backgroundColor: AppColors.cultured_background_color,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.r)), //this right here
    child: SizedBox(
      height: 500.h,
      width: 345.w,
      child: Padding(
        padding: EdgeInsets.all(15.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            mediumRaisenBlackText(AppStrings.book_ride_now),
            Container(
              height: 220.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.r),
                  color: AppColors.lightcolor.withOpacity(0.5)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 30.w),
                            child: complexDotLine(Axis.horizontal, 20.h),
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
                            child: complexDotLine(Axis.horizontal, 20.h),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(right: 10),
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
                                  Text('')),
                              SizedBox(
                                height: 20.h,
                              ),
                              ridePickDropLocationCard(
                                  Icons.location_on,
                                  AppColors.lightcolor,
                                  AppColors.green_color,
                                  AppStrings.drop_off,
                                  AppStrings.current_location_address,
                                  Text('')),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15.w, right: 15.w),
                    child: Container(
                      height: 40.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.r),
                        color: AppColors.cultured_background_color,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          dialogNormalText(
                              AppStrings.price, AppColors.auth_detailscolor),
                          SizedBox(
                            width: 30.w,
                          ),
                          dialogNormalText("\$25.00", AppColors.raisin_black),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            lightButton(double.infinity, AppStrings.enter_coupon_code,
                AppColors.majorelle_blue_color, () {}),
            majorelleBlueButton(AppStrings.confirm_pay, () {
              Navigator.of(context).pop();
              showDialog(
                  context: context,
                  builder: (BuildContext context) =>
                      driverAvailableDetailsDialog(context));
            }),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: mediumBlackText(
                    AppStrings.cancel, AppColors.majorelle_blue_color))
          ],
        ),
      ),
    ),
  );
}

//ride
rideDialog(context) {
  return Dialog(
    backgroundColor: AppColors.cultured_background_color,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.r)), //this right here
    child: SizedBox(
      height: 400.h,
      width: 325.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 90.h,
            decoration: BoxDecoration(
                color: AppColors.lightcolor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.r),
                  topRight: Radius.circular(10.r),
                )),
            child: Padding(
              padding: EdgeInsets.all(15.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50.h,
                    width: 50.w,
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
                                    image: AssetImage(
                                        'assets/images/radialcar.png'),
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
                  Container(
                    height: 30.h,
                    width: 30.w,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.majorelle_blue_color),
                    child: Center(
                        child: Icon(
                      Icons.message,
                      color: AppColors.lightcolor,
                      size: 20.w,
                    )),
                  ),
                  Container(
                    height: 30.h,
                    width: 30.w,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.majorelle_blue_color),
                    child: Center(
                        child: Icon(
                      Icons.call,
                      color: AppColors.lightcolor,
                      size: 20.w,
                    )),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15.w),
            child: Column(
              children: [
                Container(
                  height: 150.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.r),
                      color: AppColors.lightcolor.withOpacity(0.5)),
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
                            child: complexDotLine(Axis.horizontal, 22.h),
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
                            child: complexDotLine(Axis.horizontal, 22.h),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(right: 10),
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
                                  Text('')),
                              SizedBox(
                                height: 20.h,
                              ),
                              ridePickDropLocationCard(
                                  Icons.location_on,
                                  AppColors.lightcolor,
                                  AppColors.green_color,
                                  AppStrings.drop_off,
                                  AppStrings.current_location_address,
                                  Text('')),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 50.h,
                  decoration: lightCardDecoration,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      rideDistanceTimePriceCard(
                          Icons.add_location, 'Distance', '5 km'),
                      rideDistanceTimePriceCard(Icons.alarm, 'Time', '15 min'),
                      rideDistanceTimePriceCard(Icons.money, 'Price', '\$25.0'),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.h, bottom: 10.h),
                  child: majorelleBlueButton("Book ride", () {
                    Navigator.of(context).pop();
                    showDialog(
                        context: context,
                        builder: (BuildContext context) =>
                            bookingConfirmationDialog(context));
                  }),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Widget rideDistanceTimePriceCard(icon, title, subtitle) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        height: 30.h,
        width: 30.w,
        decoration: BoxDecoration(
            color: AppColors.majorelle_blue_color.withOpacity(0.05),
            borderRadius: BorderRadius.circular(8.r)),
        child: Center(
            child: Icon(
          icon,
          color: AppColors.majorelle_blue_color,
          size: 20.w,
        )),
      ),
      SizedBox(
        width: 5.w,
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          smallMediumText(title, AppColors.spanish_grey_color),
          smallMediumText(subtitle, AppColors.raisin_black)
        ],
      )
    ],
  );
}