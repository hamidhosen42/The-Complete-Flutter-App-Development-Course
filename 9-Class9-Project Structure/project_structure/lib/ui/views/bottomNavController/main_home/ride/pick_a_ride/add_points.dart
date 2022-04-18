import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../../const/app_colors.dart';
import '../../../../../../const/app_strings.dart';
import '../../../../../styles/styles.dart';
import '../../../../../widgets/app_bottom_modals.dart';
import '../../../../../widgets/app_buttons.dart';
import '../../../../../widgets/app_icons.dart';
import '../../../../../widgets/app_text.dart';

class AddPoints extends StatelessWidget {
  const AddPoints({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.all(10.w),
          child: CircleAvatar(
            radius: 20.w,
            backgroundColor: AppColors.majorelle_blue_color.withOpacity(0.10),
            child: Center(
              child: IconButton(
                onPressed: () => Get.back(),
                icon: Icon(
                  Icons.arrow_back,
                  color: AppColors.majorelle_blue_color,
                  size: 20.w,
                ),
              ),
            ),
          ),
        ),
        centerTitle: true,
        title: authBlueText(AppStrings.add),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 50.h,
                  child: TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 25.w, vertical: 20.h),
                      filled: true,
                      fillColor: AppColors.lightcolor,
                      hintText: AppStrings.search_point,
                      prefixIcon: Icon(
                        Icons.location_on,
                        color: AppColors.green_color,
                        size: 16.w,
                      ),
                      suffixIcon: Icon(
                        Icons.close,
                        color: AppColors.majorelle_blue_color,
                        size: 15.w,
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
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  height: 50.h,
                  color: AppColors.lightcolor,
                  child: ListTile(
                    leading: Icon(
                      Icons.location_on,
                      color: AppColors.green_color,
                      size: 16.w,
                    ),
                    title: Padding(
                      padding: EdgeInsets.only(bottom: 5.h),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          dialogNormalText(
                            AppStrings.dropoff_title,
                            AppColors.auth_detailscolor,
                          ),
                          smallMediumText(AppStrings.dropoff_address,
                              AppColors.auth_detailscolor),
                        ],
                      ),
                    ),
                    trailing: Padding(
                      padding: EdgeInsets.only(bottom: 5.h),
                      child: CircleAvatar(
                          radius: 10.w,
                          backgroundColor:
                              AppColors.majorelle_blue_color.withOpacity(0.1),
                          child: Center(child: blueForwardIcon())),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
              ],
            ),
            majorelleBlueButton(
              AppStrings.add,
              () {
                Get.back();
                showModalBottomSheet(
                    shape: shape,
                    isScrollControlled: true,
                    context: context,
                    builder: (context) => changeingPriceModal());
              },
            )
          ],
        ),
      ),
    );
    ;
  }
}
