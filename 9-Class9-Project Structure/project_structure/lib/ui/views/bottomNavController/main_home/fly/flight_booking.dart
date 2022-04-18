// ignore_for_file: prefer_const_constructors, curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../const/app_colors.dart';
import '../../../../route/route.dart';
import '../../../../styles/styles.dart';
import '../../../../widgets/app_buttons.dart';
import '../../../../widgets/app_radio_buttons.dart';
import '../../../../widgets/travellers_widget.dart';

class FlightBooking extends StatefulWidget {
  @override
  State<FlightBooking> createState() => _FlightBookingState();
}

class _FlightBookingState extends State<FlightBooking> {
  int _currentIndex = 0;
  DateTime selectedDate = DateTime.now();

  travellersBottomSheet() {
    return showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      shape: shape,
      builder: (_) {
        return Container(
          height: 600.h,
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
                      "No. of traveller",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "Done",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColors.majorelle_blue_color,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25.h,
                ),
                NumberOfTravellers("Adult", "18-30 Years"),
                NumberOfTravellers("Children", "2-13 Years"),
                NumberOfTravellers("Infants", "0-2 Years"),
                Text(
                  "Class",
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.auth_detailscolor,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                ClassRadio(),
              ],
            ),
          ),
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
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  fromWhereBottomSheet() {
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
                      hintText: "From Where",
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
                      return ListTile(
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
                      return ListTile(
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
    return DefaultTabController(
      initialIndex: _currentIndex,
      length: 2,
      child: Scaffold(
        appBar: leadingTitleAppBar("Flight Booking"),
        body: Column(
          children: [
            Image.asset(
              "assets/images/book-your-flight.png",
              height: 110.h,
              width: ScreenUtil().screenWidth,
              fit: BoxFit.fitWidth,
            ),
            Padding(
              padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 20.h),
              child: Column(
                children: [
                  Container(
                    height: 55.h,
                    width: ScreenUtil().screenWidth,
                    decoration: BoxDecoration(
                      color: AppColors.majorelle_blue_color,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5.r),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: 4.h, bottom: 4.h, left: 5.w, right: 5.w),
                      child: TabBar(
                        onTap: (index) {
                          setState(() {
                            _currentIndex = index;
                          });
                        },
                        labelColor: AppColors.majorelle_blue_color,
                        unselectedLabelColor: Colors.white,
                        labelStyle: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                        indicatorSize: TabBarIndicatorSize.tab,
                        indicator: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(4.r),
                          ),
                          color: Colors.white,
                        ),

                        // ignore: prefer_const_literals_to_create_immutables
                        tabs: [
                          Tab(
                            child: Align(
                              alignment: Alignment.center,
                              child: Text("One Way"),
                            ),
                          ),
                          Tab(
                            child: Align(
                              alignment: Alignment.center,
                              child: Text("Round Trip"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 20.w, right: 20.w, top: 15.h, bottom: 15.h),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  flightBookingTitle("From"),
                                  flightBookingButton(
                                    "From Where",
                                    () => fromWhereBottomSheet(),
                                  ),
                                ],
                              ),
                              CircleAvatar(
                                radius: 15.w,
                                backgroundColor: AppColors.majorelle_blue_color
                                    .withOpacity(0.10),
                                child: Center(
                                  child: Image.asset(
                                    "assets/icons/airoplane.png",
                                    width: 11.w,
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  flightBookingTitle("To"),
                                  flightBookingButton(
                                    "To Where",
                                    () => toWhereBottomSheet(),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  flightBookingTitle("Departure Date"),
                                  flightBookingButton(
                                    "22 July 2021",
                                    () => _selectDate(context),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  flightBookingTitle("Add Return Date"),
                                  flightBookingButton(
                                    "28 July 2021",
                                    () => _selectDate(context),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  flightBookingTitle("Travellers"),
                                  flightBookingButton(
                                    "1 Adult",
                                    () => travellersBottomSheet(),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  flightBookingTitle("Class"),
                                  flightBookingButton(
                                    "Economy",
                                    () => travellersBottomSheet(),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  flightBookingTitle("Name"),
                                  flightBookingButton(
                                    "Afran Sarkar",
                                    () {},
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  flightBookingTitle("Gender"),
                                  flightBookingButton(
                                    "Male",
                                    () {},
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(),
                  majorelleBlueButton(
                    "Search Flight",
                    ()=>Get.toNamed(availableFlights),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
