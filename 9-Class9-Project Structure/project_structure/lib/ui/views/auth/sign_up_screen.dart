// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

import '../../../const/app_colors.dart';
import '../../../const/app_strings.dart';
import '../../route/route.dart';
import '../../styles/styles.dart';
import '../../widgets/app_buttons.dart';
import '../../widgets/app_dialog.dart';
import '../../widgets/app_text.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: 850.h,
        width: 375.w,
        decoration: backgroundImageDecoration,
        child: Padding(
          padding: EdgeInsets.only(left: 30.w, right: 30.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 55.h,
                    width: 105.w,
                    child: Image.asset(
                      'assets/logo/logo.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  authBlueText(AppStrings.create_account),
                  SizedBox(
                    height: 20.h,
                  ),
                  authDetailsText(AppStrings.create_account_details),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: 55.h,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 25.w, vertical: 20.h),
                        filled: true,
                        fillColor: AppColors.textfield_fillcolor,
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
                  SizedBox(
                    height: 30.h,
                  ),
                  majorelleBlueButton(AppStrings.create_account_buttontext, () {
                    Get.toNamed(otp);
                  }),
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      const Expanded(child: Divider()),
                      SizedBox(
                        width: 16.w,
                      ),
                      Text(AppStrings.create_account_continuetext,
                          style: TextStyle(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.textfield_hintcolor,
                          )),
                      SizedBox(
                        width: 16.w,
                      ),
                      const Expanded(child: Divider()),
                    ],
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      socialButton('assets/icons/google.png', () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) =>
                                authGoogleDialog(context));
                      }),
                      socialButton('assets/icons/fb.png', () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) => authFbDialog(context));
                      }),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
