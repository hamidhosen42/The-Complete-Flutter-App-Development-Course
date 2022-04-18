import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../const/app_colors.dart';

Widget dialPadButton(onPressed, digit) {
  return Material(
    color: Colors.transparent,
    child: IconButton(
      onPressed: onPressed,
      icon: Text(
        digit,
        style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 26.sp,
            color: AppColors.auth_detailscolor),
      ),
    ),
  );
}

Widget valueButton(digit) {
  return Container(
    height: 60.h,
    width: 60.w,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.r),
      color:AppColors.textfield_fillcolor,
    ),
    child: Center(
      child: Text(
        digit != null ? digit.toString() : "",
        style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16.sp,
            color: AppColors.auth_detailscolor,
            wordSpacing: 1),
      ),
    ),
  );
}

Widget majorelleBlueButton(text, onpress) {
  return Container(
    height: 46.h,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(7.r)),
    ),
    child: Material(
      borderRadius: BorderRadius.all(Radius.circular(7.r)),
      color: AppColors.majorelle_blue_color,
      child: InkWell(
        onTap: onpress,
        splashColor: AppColors.lightcolor,
        child: Center(
          child: Text(
            text,
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
  );
}

Widget lightButton(width,String text,textcolor,onpress) {
    return Container(
      height: 46.h,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(7.r)),
          color: AppColors.lightcolor,
          border: Border.all(
              width: 2, color: AppColors.majorelle_blue_color)),
      child: Material(
        borderRadius: BorderRadius.all(Radius.circular(7.r)),
        color: AppColors.lightcolor,
        child: InkWell(
          onTap: onpress,
          splashColor: AppColors.lightcolor,
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 12.sp,
                color: textcolor,
                letterSpacing: 0.6,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
  
Widget socialButton(String image, onpress) {
  return Container(
    height: 50.h,
    width: 140.w,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5.r),

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
    child: Material(
      color: AppColors.lightcolor,
      child: InkWell(
        onTap: onpress,
        splashColor:AppColors.davys_grey_color.withOpacity(0.5),
        child: Center(
          child: SizedBox(
              height: 25.h,
              width: 25.h,
              child: Image.asset(
                image,
                fit: BoxFit.contain,
              )),
        ),
      ),
    ),
  );
}

Widget continueButton(String image, String text, onpress) {
  return Container(
    height: 50.h,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5.r),

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
    child: Material(
      color: AppColors.lightcolor,
      borderRadius: BorderRadius.circular(5.r),
      child: InkWell(
        onTap: onpress,
        splashColor: Colors.blueGrey.withOpacity(0.5),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  height: 22.h,
                  width: 22.h,
                  child: Image.asset(
                    image,
                    fit: BoxFit.contain,
                  )),
              SizedBox(
                width: 20.w,
              ),
              Text(
                text,
                style: TextStyle(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.auth_detailscolor.withOpacity(0.5),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

Widget closeBackButton(height, width, iconsize, onpress) {
  return TextButton(
    onPressed: onpress,
    child: Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: AppColors.majorelle_blue_color.withOpacity(0.1),
          shape: BoxShape.circle),
      child: Center(
        child: Icon(
          Icons.close,
          size: iconsize,
          color: AppColors.majorelle_blue_color,
        ),
      ),
    ),
  );
}


Widget flightBookingButton(text, onpress) {
  return Container(
    height: 46.h,
    width: ScreenUtil().screenWidth/3.5,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(7.r)),
    ),
    child: Material(
      borderRadius: BorderRadius.all(Radius.circular(7.r)),
      color: AppColors.cultured_background_color,
      child: InkWell(
        onTap: onpress,
        splashColor: AppColors.lightcolor,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 12.sp,
              color: AppColors.frosted_grey_color,
              letterSpacing: 0.6,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    ),
  );
}

Widget greenButton(text, onpress) {
  return Container(
    height: 46.h,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(7.r)),
    ),
    child: Material(
      borderRadius: BorderRadius.all(Radius.circular(7.r)),
      color: AppColors.green_color,
      child: InkWell(
        onTap: onpress,
        splashColor: AppColors.lightcolor,
        child: Center(
          child: Text(
            text,
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
  );
}
