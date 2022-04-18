import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../../../../../const/app_colors.dart';
import '../../../../route/route.dart';
import '../../../../styles/styles.dart';
import '../../../../widgets/app_icons.dart';
import '../../../../widgets/app_text.dart';
import '../place/find_your_stay.dart';

class FindCars extends StatefulWidget {
  const FindCars({Key? key}) : super(key: key);

  @override
  _FindCarsState createState() => _FindCarsState();
}

class _FindCarsState extends State<FindCars> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightcolor,
      appBar: leadingTitleAppBar("Rent A Car"),
      body: Container(
        color: AppColors.light_background_color,
        child: Padding(
          padding: EdgeInsets.all(8.w),
          child: Column(
            children: [
              Container(
                height: 235.h,
                decoration: circularLightDecoration,
                child: Padding(
                  padding: EdgeInsets.all(10.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      mediumBlackText("Rohini", AppColors.auth_detailscolor),
                      placeTextfield(double.infinity, TextInputType.text,
                          "Rohini Sec 3", AppColors.place_textfield_color),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              mediumBlackText(
                                  "Start Trip", AppColors.auth_detailscolor),
                              placeTextfield(
                                  150.w,
                                  TextInputType.text,
                                  "July 16,10.30 AM",
                                  AppColors.place_textfield_color),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              mediumBlackText(
                                  "End Trip", AppColors.auth_detailscolor),
                              placeTextfield(
                                  150.w,
                                  TextInputType.text,
                                  "July 18,01.00 PM",
                                  AppColors.place_textfield_color),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
               Expanded(
                 child: Container(
                   child: ListView.builder(
                                itemCount: 4,
                                scrollDirection: Axis.vertical,
                                itemBuilder: (context,index){
                                  return  Padding(
                    padding: EdgeInsets.only(bottom: 10.h),
                    child: InkWell(
                      onTap: ()=> Get.toNamed(rentbooking),
                      child: Container(
                        height: 145.h,
                        width: double.infinity,
                        decoration: circularLightDecoration,
                        child: Padding(
                          padding: EdgeInsets.all(20.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  mediumRaisenBlackText("4 BHK stay"),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      dialogBlueText("\$ 480"),
                                      SizedBox(
                                        width: 5.w,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 10.h),
                                        child: smallMediumText("/Per Day",
                                            AppColors.dialog_divider_color),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Row(
                                        children: [
                                          starIcon(Icons.star, 12.w),
                                          SizedBox(
                                            width: 8.w,
                                          ),
                                          smallMediumText(
                                              '4.2', AppColors.green_color)
                                        ],
                                      ),
                                      SizedBox(
                                        width: 30.w,
                                      ),
                                      Row(
                                        children: [
                                          starIcon(Icons.man, 12.w),
                                          SizedBox(
                                            width: 8.w,
                                          ),
                                          smallMediumText(
                                              '1-2', AppColors.green_color)
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Container(
                                height: 85.h,
                                width: 140.w,
                                child: Image.asset(
                                  "assets/images/car.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                             );
                                }),
                 ),
               ),
             
            ],
          ),
        ),
      ),
    );
  }
}
