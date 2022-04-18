import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../const/app_colors.dart';
import '../../../styles/styles.dart';
import '../../../widgets/app_buttons.dart';
import '../../../widgets/app_text.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightcolor,
      appBar: leadingTitleAppBar("Change password"),
      body: Container(
        color: AppColors.light_background_color,
        child: Padding(
          padding: EdgeInsets.all(10.w),
          child: Container(
            decoration: BoxDecoration(
                color: AppColors.lightcolor,
                borderRadius: BorderRadius.circular(10.w)),
            child: Padding(
              padding: EdgeInsets.all(10.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  authDetailsText("Current password"),
                  textFieldWithSuffix("Sunita"),
                  authDetailsText("Enter password"),
                  textFieldWithSuffix("Enter password"),
                  authDetailsText("Confirm new password"),
                  textFieldWithSuffix("Enter password"),
                  majorelleBlueButton("Change", () {})
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget textFieldWithSuffix(hinttext) {
  bool _obscureText = true;
  return StatefulBuilder(builder: (context, setState) {
    return Padding(
      padding: EdgeInsets.only(top: 10.h, bottom: 25.h),
      child: SizedBox(
        height: 50.h,
        child: TextField(
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            suffix: Padding(
              padding: EdgeInsets.only(top: 25.h),
              child: IconButton(
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
                icon: _obscureText == true
                    ? Icon(
                        Icons.visibility_off,
                        size: 20.w,
                        color: AppColors.dialog_divider_color,
                      )
                    : Icon(
                        Icons.remove_red_eye,
                        size: 20.w,
                        color: AppColors.dialog_divider_color,
                      ),
              ),
            ),
            border: InputBorder.none,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 25.w, vertical: 15.h),
            filled: true,
            fillColor: AppColors.lotion_color,
            hintText: hinttext,
            hintStyle: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              letterSpacing: 0.5,
              color: AppColors.dialog_divider_color,
            ),
          ),
        ),
      ),
    );
  });
}

