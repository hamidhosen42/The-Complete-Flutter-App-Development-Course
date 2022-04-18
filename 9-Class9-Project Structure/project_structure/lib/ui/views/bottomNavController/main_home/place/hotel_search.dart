// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../../../../../const/app_colors.dart';
import '../../../../route/route.dart';
import '../../../../styles/styles.dart';
import '../../../../widgets/app_icons.dart';
import '../../../../widgets/app_radio_buttons.dart';
import '../../../../widgets/app_text.dart';
import '../../../../widgets/travellers_widget.dart';

class HotelSearch extends StatefulWidget {
  @override
  State<HotelSearch> createState() => _HotelSearchState();
}

class _HotelSearchState extends State<HotelSearch> {
  int _currentIndex = 1;
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
        backgroundColor: AppColors.lightcolor,
        appBar: leadingTitleAppBar("30 Properties Found"),
        body: Container(
          color: AppColors.light_background_color,
          child: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    SizedBox(
                      height: 20.h,
                    ),
                    TabBar(
                      onTap: (index) {
                        setState(() {
                          _currentIndex = index;
                        });
                      },
                      labelColor: AppColors.green_color,
                      unselectedLabelColor: AppColors.frosted_grey_color,
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
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  height: 25.h,
                                  width: 25.w,
                                  color: AppColors.green_color.withOpacity(0.1),
                                  child: Icon(
                                    Icons.sort,
                                    size: 15.w,
                                    color: AppColors.auth_detailscolor,
                                  )),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text("Sort"),
                            ],
                          ),
                        ),
                        Tab(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  height: 25.h,
                                  width: 25.w,
                                  color: AppColors.green_color.withOpacity(0.1),
                                  child: Icon(
                                    Icons.filter_list,
                                    size: 15.w,
                                    color: AppColors.green_color,
                                  )),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text("Filter"),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Expanded(
                        child: TabBarView(children: [
                      Container(
                        color: AppColors.light_background_color,
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: 300,
                            decoration: modalCardDecoration,
                            child: Padding(
                              padding:  EdgeInsets.all(20.w),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                   Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Sort",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    InkWell(
                      onTap: ()=> Get.toNamed(placeFilter),
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
               
                                  SortRadio(),
                                ],
                              ),
                            )),
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: EdgeInsets.only(left: 20.w, right: 20.w),
                          child: ListView.builder(
                            itemCount: 5,
                            scrollDirection: Axis.vertical,
                            itemBuilder: (context,index){
                            return  Padding(
                              padding: EdgeInsets.only(bottom: 10.h),
                              child: Container(
                               height: 145.h,
                               width: double.infinity,
                               decoration: BoxDecoration(
                                 color: AppColors.lightcolor,
                                 borderRadius: BorderRadius.all(
                                   Radius.circular(10.w),
                                 ),
                               ),
                               child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Container(
                                     height: 145.h,
                                     width: 145.w,
                                     child: ClipRRect(
                                         borderRadius: BorderRadius.only(
                                           topLeft: Radius.circular(10.w),
                                           bottomLeft: Radius.circular(10.w),
                                         ),
                                         child: Image.asset(
                                           "assets/images/stayone.png",
                                           fit: BoxFit.cover,
                                         )),
                                   ),
                                   Padding(
                                     padding: EdgeInsets.all(12.w),
                                     child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                       crossAxisAlignment:
                                           CrossAxisAlignment.start,
                                       children: [
                                         Row(
                                           mainAxisAlignment:
                                               MainAxisAlignment.spaceBetween,
                                           children: [
                                             dialogNormalText("4 BHK stay",
                                                 AppColors.auth_detailscolor),
                                            SizedBox(width: 50.w,),
                                             Row(
                                               children: [
                                                 starIcon(Icons.star, 12.w),
                                                 SizedBox(
                                                   width: 8.w,
                                                 ),
                                                 smallMediumText('4.2',
                                                     AppColors.green_color)
                                               ],
                                             ),
                                           ],
                                         ),
                                         Row(
                                           mainAxisAlignment:
                                               MainAxisAlignment.spaceBetween,
                                               crossAxisAlignment: CrossAxisAlignment.center,
                                           children: [
                                             dialogBlueText("\$ 480"),
                                             SizedBox(width: 5.w,),
                                             Padding(
                                               padding: EdgeInsets.only(top: 10.h),
                                               child: smallMediumText(
                                                   "/Per Day",
                                                   AppColors
                                                       .dialog_divider_color),
                                             ),
                                           ],
                                         ),
                                         InkWell(
                                           onTap: ()=> Get.toNamed(placeFilter),
                                           child: Container(
                                             height: 46.h,
                                             width: 160.w,
                                             decoration: BoxDecoration(
                                               borderRadius: BorderRadius.all(
                                                   Radius.circular(7.r)),
                                             ),
                                             child: Material(
                                               borderRadius: BorderRadius.all(
                                                   Radius.circular(7.r)),
                                               color: AppColors
                                                   .majorelle_blue_color,
                                               child: Center(
                                                 child: Text(
                                                   "Book Now",
                                                   style: TextStyle(
                                                     fontSize: 12.sp,
                                                     color:
                                                         AppColors.lightcolor,
                                                     letterSpacing: 0.6,
                                                     fontWeight:
                                                         FontWeight.w500,
                                                   ),
                                                 ),
                                               ),
                                             ),
                                           ),
                                         ),
                                       ],
                                     ),
                                   )
                                 ],
                               ),
                           ),
                            );
                          
                          }),
                        ),
                      ),
                    ]))
                    // Divider(),
                    // majorelleBlueButton(
                    //   "Search Flight",
                    //   ()=>Get.toNamed(availableFlights),
                    // ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
