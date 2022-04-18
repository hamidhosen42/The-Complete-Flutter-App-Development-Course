// ignore_for_file: prefer_is_empty, prefer_const_constructors, unnecessary_string_interpolations, unnecessary_null_comparison


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

import '../../../const/app_colors.dart';
import '../../../const/app_strings.dart';
import '../../route/route.dart';
import '../../styles/styles.dart';
import '../../widgets/app_buttons.dart';
import '../../widgets/app_text.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  _VerificationScreenState createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  var value = "";

  var _currentDigit;
  var _firstDigit;
  var _secondDigit;
  var _thirdDigit;
  var _fourthDigit;
  // Current digit
  void _setCurrentDigit(int i) {
    setState(() {
      _currentDigit = i;
      if (_firstDigit == null) {
        _firstDigit = _currentDigit;
      } else if (_secondDigit == null) {
        _secondDigit = _currentDigit;
      } else if (_thirdDigit == null) {
        _thirdDigit = _currentDigit;
      } else if (_fourthDigit == null) {
        _fourthDigit = _currentDigit;

        var otp = _firstDigit.toString() +
            _secondDigit.toString() +
            _thirdDigit.toString() +
            _fourthDigit.toString();

        // Verify your otp by here. API call
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 850.h,
        width: 375.w,
        decoration: backgroundImageDecoration,
        child: Padding(
          padding: EdgeInsets.only(left: 30.w, right: 30.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 50.h,
                  ),
                  authBlueText(AppStrings.verification),
                  SizedBox(
                    height: 20.h,
                  ),
                  authDetailsText(AppStrings.send_code_number),
                  SizedBox(
                    height: 40.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      valueButton(_firstDigit),
                      valueButton(_secondDigit),
                      valueButton(_thirdDigit),
                      valueButton(_fourthDigit),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Text(
                          AppStrings.recieve_code,
                          style: TextStyle(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 1,
                            color:AppColors.space_cadet_color,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            AppStrings.request_code,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              decorationThickness: 2,
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w600,
                              color: AppColors.green_color,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  majorelleBlueButton(AppStrings.next, () {
                    Get.toNamed(welcome);
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
                            _setCurrentDigit(1);
                          },
                        );
                      }, "1"),
                      dialPadButton(() {
                        setState(() {
                          _setCurrentDigit(2);
                        });
                      }, "2"),
                      dialPadButton(() {
                        setState(() {
                          _setCurrentDigit(3);
                        });
                      }, "3"),
                      dialPadButton(() {
                        setState(() {
                          _setCurrentDigit(4);
                        });
                      }, "4"),
                      dialPadButton(() {
                        setState(() {
                          _setCurrentDigit(5);
                        });
                      }, "5"),
                      dialPadButton(() {
                        setState(() {
                          _setCurrentDigit(6);
                        });
                      }, "6"),
                      dialPadButton(() {
                        setState(() {
                          _setCurrentDigit(7);
                        });
                      }, "7"),
                      dialPadButton(() {
                        setState(() {
                          _setCurrentDigit(8);
                        });
                      }, "8"),
                      dialPadButton(() {
                        setState(() {
                          _setCurrentDigit(9);
                        });
                      }, "9"),
                      dialPadButton(() {}, ""),
                      dialPadButton(() {
                        setState(() {
                          _setCurrentDigit(0);
                        });
                      }, "0"),
                      Material(
                        color: Colors.transparent,
                        child: IconButton(
                            onPressed: () {
                              setState(() {
                                if (_fourthDigit != null) {
                                  _fourthDigit = null;
                                } else if (_thirdDigit != null) {
                                  _thirdDigit = null;
                                } else if (_secondDigit != null) {
                                  _secondDigit = null;
                                } else if (_firstDigit != null) {
                                  _firstDigit = null;
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
      ),
    );
  }
}
