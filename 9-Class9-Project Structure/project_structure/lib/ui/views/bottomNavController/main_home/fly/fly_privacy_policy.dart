// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../../../../../const/app_colors.dart';
import '../../../../route/route.dart';
import '../../../../styles/styles.dart';
import '../../../../widgets/app_buttons.dart';

class FlyPrivacyPolicy extends StatelessWidget {
  const FlyPrivacyPolicy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: leadingTitleAppBar("Privacy Policy"),
      body: Padding(
        padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "What is qwikio’s Cancellation Policy?",
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.auth_detailscolor,
              ),
            ),
            Text(
              "You can now cancel an order when it is in packed/shipped status, as long as the cancel option is available on App/Website/M-site. This includes items purchased on sale also. Any amount paid will be credited into the same  ayment mode using which the  ayment was made",
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                color: AppColors.auth_detailscolor,
              ),
            ),
            Divider(color: Colors.transparent,),
             Text(
              "How do I cancel my Order?",
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.auth_detailscolor,
              ),
            ),
            Text(
              "Tap on “My Orders” section under the main menu of your App/Website/M-site and then select the item or order you want to cancel",
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                color: AppColors.auth_detailscolor,
              ),
            ),
           
             SizedBox(height: 30.h,),
             majorelleBlueButton("Continue", ()=>Get.toNamed(bookingOrder))
          ],
        ),
      ),
    );
  }
}
