// ignore_for_file: prefer_const_constructors, non_constant_identifier_names


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../const/app_strings.dart';
import '../../styles/styles.dart';
import '../../widgets/app_buttons.dart';
import '../../widgets/app_dialog.dart';
import '../../widgets/app_text.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
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
                  authBlueText(AppStrings.welcome),
                  SizedBox(
                    height: 20.h,
                  ),
                  authDetailsText(
                      AppStrings.signin_account_easier),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  continueButton(
                      'assets/icons/google.png', AppStrings.continue_with_google, () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) => authGoogleDialog(context));
                  }),
                  SizedBox(
                    height: 20.h,
                  ),
                  continueButton(
                      'assets/icons/fb.png', AppStrings.continue_with_fb, () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) => authFbDialog(context));
                  }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
