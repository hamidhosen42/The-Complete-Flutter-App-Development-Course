// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../../../../../const/app_colors.dart';
import '../../../../route/route.dart';
import '../../../../styles/styles.dart';
import '../../../../widgets/app_buttons.dart';
import '../../../../widgets/app_text.dart';
import '../../../../widgets/travellers_widget.dart';

class FindYourStay extends StatefulWidget {
  @override
  _FindYourStayState createState() => _FindYourStayState();
}

class _FindYourStayState extends State<FindYourStay> {

  roomGuestBottomSheet() {
    return showModalBottomSheet(
     // isScrollControlled: true,
      context: context,
      shape: shape,
      builder: (_) {
        return Container(
          height: 320.h,
          decoration: modalCardDecoration,
          child: Padding(
            padding: EdgeInsets.only(
                left: 20.w, right: 20.w, top: 40.h, bottom: 15.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Rooms & Guest",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    InkWell(
                      onTap:
                         ()=>toWhereBottomSheet(),
                     
                      child: Text(
                        "Done",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColors.green_color,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25.h,
                ),
                Container(
                  height: 180.h,
                  child:Column(
                    children: [
                      NumberOfRoomGuest("Number of Adults "),
                      NumberOfRoomGuest("Number of Adults "),
                      NumberOfRoomGuest("Number of Adults ")
                    ],
                  ),
                ),
              
                
              ],
            ),
          ),
        );
      },
    );
  }

  toWhereBottomSheet() {
    return showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      shape: shape,
      builder: (_) {
        return Container(
          height: 700.h,
          decoration: modalCardDecoration,
          child: Padding(
            padding: EdgeInsets.only(
                left: 20.w, right: 20.w, top: 40.h, bottom: 15.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 55.h,
                  child: TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 25.w, vertical: 20.h),
                      filled: true,
                      fillColor: Colors.black12,
                      hintText: "To Where",
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_back,
                          color: AppColors.majorelle_blue_color,
                          size: 16.w,
                        ),
                      ),
                      hintStyle: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.5,
                        color: AppColors.textfield_hintcolor,
                      ),
                    ),
                  ),
                ),
                Divider(),
                Expanded(
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (_, index) {
                      return InkWell(
                        onTap: ()=> Get.toNamed(hotelSearch),
                        child: ListTile(
                          dense: true,
                          title: Text(
                            "Delhi, India",
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: AppColors.auth_detailscolor,
                            ),
                          ),
                          subtitle: Text(
                            "Delhi, India",
                            style: TextStyle(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.spanish_grey_color,
                            ),
                          ),
                          trailing: Container(
                            height: 35.h,
                            width: 65.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(5.r),
                              ),
                              color: Color(0xFF6FCF97).withOpacity(0.10),
                            ),
                            child: Center(
                              child: Text(
                                "DEL",
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.auth_detailscolor,
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.lightcolor,
      appBar: leadingTitleAppBar("Find Your Stay"),
      body: Container(
        color: AppColors.light_background_color,
        child: Padding(
          padding: EdgeInsets.all(15.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              dialogNormalText("Select City/Area/Propert Name",
                  AppColors.spanish_grey_color),
              placeTextfield(double.infinity, TextInputType.text, "Goa, India",AppColors.lightcolor),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      dialogNormalText(
                          "Check in date", AppColors.spanish_grey_color),
                      placeTextfield(160.w, TextInputType.number, "20/07/2021",AppColors.lightcolor),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      dialogNormalText(
                          "Check in date", AppColors.spanish_grey_color),
                      placeTextfield(160.w, TextInputType.number, "20/07/2021",AppColors.lightcolor),
                    ],
                  ),
                ],
              ),
              dialogNormalText("Rooms & Guest", AppColors.spanish_grey_color),
              placeTextfield(
                  double.infinity, TextInputType.text, "1 room, 2 Adults",AppColors.lightcolor),
              dialogNormalText(
                  "Type of accommodation", AppColors.spanish_grey_color),
              placeTextfield(double.infinity, TextInputType.text,
                  "Hotel, Entire Place , Apartment ",AppColors.lightcolor),
              SizedBox(
                height: 30.h,
              ),
              majorelleBlueButton("Search Hotels", () {
                roomGuestBottomSheet();
              })
            ],
          ),
        ),
      ),
    );
  }
}

Widget placeTextfield(width, inputtype, hinttext,fillColor) {
  return Padding(
    padding: EdgeInsets.only(top: 10.h, bottom: 15.h),
    child: SizedBox(
      height: 55.h,
      width: width,
      child: TextField(
        keyboardType: inputtype,
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding:
              EdgeInsets.symmetric(horizontal: 25.w, vertical: 20.h),
          filled: true,
          fillColor: fillColor,
          hintText: hinttext,
          hintStyle: TextStyle(
            fontSize: 13.sp,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.5,
            color: AppColors.textfield_hintcolor,
          ),
        ),
      ),
    ),
  );
}
