// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import '../../../../../const/app_colors.dart';
import '../../../../styles/styles.dart';
import '../../../../widgets/app_radio_buttons.dart';

class FlyFilter extends StatefulWidget {
  @override
  State<FlyFilter> createState() => _FlyFilterState();
}

class _FlyFilterState extends State<FlyFilter> {
  SfRangeValues _values = SfRangeValues(40.0, 80.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: leadingTitleAppBar("Filter"),
      body: Padding(
        padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Stops",
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            StopsRadio(),
            Divider(
              color: Colors.transparent,
            ),
            Text(
              "Durations",
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            Text(
              "upto 29h 33m",
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                color: AppColors.dialog_divider_color,
              ),
            ),
            Divider(
              color: Colors.transparent,
            ),
            Text(
              "Price",
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            SfRangeSlider(
              min: 0.0,
              max: 100.0,
              values: _values,
              interval: 20,
              showTicks: true,
              showLabels: true,
              enableTooltip: true,
              minorTicksPerInterval: 1,
              onChanged: (SfRangeValues values) {
                setState(() {
                  _values = values;
                });
              },
            ),
            Divider(
              color: Colors.transparent,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 40.h,
                  width: 70.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(7.r)),
                  ),
                  child: Material(
                    borderRadius: BorderRadius.all(Radius.circular(7.r)),
                    color: AppColors.majorelle_blue_color.withOpacity(0.10),
                    child: InkWell(
                      onTap: () {},
                      splashColor: AppColors.lightcolor,
                      child: Center(
                        child: Text(
                          "₹4,434",
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: AppColors.auth_detailscolor,
                            letterSpacing: 0.6,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 40.h,
                  width: 70.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(7.r)),
                  ),
                  child: Material(
                    borderRadius: BorderRadius.all(Radius.circular(7.r)),
                    color: AppColors.majorelle_blue_color.withOpacity(0.10),
                    child: InkWell(
                      onTap: () {},
                      splashColor: AppColors.lightcolor,
                      child: Center(
                        child: Text(
                          "₹4,434",
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: AppColors.auth_detailscolor,
                            letterSpacing: 0.6,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Divider(
              color: Colors.transparent,
            ),
            Text(
              "Airlines",
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            ListTile(
              dense: true,
              title: Text("Indigo (32)"),
              leading: CircleAvatar(
                radius: 10,
              ),
              trailing: Text(
                "₹4,434",
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.dialog_divider_color,
                ),
              ),
            ),
            ListTile(
              dense: true,
              title: Text("Go First (08)"),
              leading: CircleAvatar(
                radius: 10,
              ),
              trailing: Text(
                "₹4,434",
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.dialog_divider_color,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
