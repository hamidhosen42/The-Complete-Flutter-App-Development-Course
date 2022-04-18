// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../const/app_colors.dart';
import '../../../styles/styles.dart';
import '../../../widgets/app_divider.dart';
import '../../../widgets/app_text.dart';

class HelpSupport extends StatefulWidget {
  const HelpSupport({Key? key}) : super(key: key);

  @override
  _HelpSupportState createState() => _HelpSupportState();
}

class _HelpSupportState extends State<HelpSupport> {
  bool isClick = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightcolor,
      appBar: leadingTitleAppBar("Help and support"),
      body: Container(
        color: AppColors.light_background_color,
        child: Padding(
          padding: EdgeInsets.all(10.w),
          child: Padding(
            padding: EdgeInsets.all(10.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 110.h,
                  decoration: BoxDecoration(
                      color: AppColors.majorelle_blue_color,
                      borderRadius: BorderRadius.circular(8.w)),
                  child: Padding(
                    padding: EdgeInsets.all(12.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        mediumBlackText(
                            "How can we help you ?", AppColors.lightcolor),
                        Container(
                          height: 35.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.w)),
                          child: TextField(
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.search_outlined,
                                size: 14.w,
                                color: AppColors.raisin_black,
                              ),
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 25.w, vertical: 14.h),
                              filled: true,
                              fillColor: AppColors.lightcolor,
                              hintText: "Search from topics",
                              hintStyle: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.5,
                                color: AppColors.raisin_black,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppColors.lightcolor,
                        borderRadius: BorderRadius.circular(10.w)),
                    child: Padding(
                      padding: EdgeInsets.all(10.w),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 20.h,
                            ),
                            Text(
                              "Featured Questions",
                              style: TextStyle(
                                fontSize: 20.sp,
                                color: AppColors.auth_detailscolor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            supportFeaturedQuestion(
                                "How can I share rides with my friends ?"),
                            supportFeaturedQuestion("Vivamus vel tortor sed ?"),
                            supportFeaturedQuestion(
                                "Proin risus enim, scelerisque pretium ?"),
                            supportFeaturedQuestion(
                                "Maecenas id ligula vitae nulla ?"),
                            supportFeaturedQuestion(
                                "Nullam felis,faucibus a metus quis?"),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 50.h,
                  decoration: BoxDecoration(
                      color: AppColors.light_background_color.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(10.w)),
                  child: Padding(
                    padding: EdgeInsets.all(10.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        dialogNormalText(
                            "Don’t find results ?", AppColors.green_color),
                        dialogNormalText("Contact Us", AppColors.green_color),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget supportFeaturedQuestion(title) {
  bool isClick = true;
  return StatefulBuilder(builder: (context, setState) {
    return InkWell(
      onTap: () {
        setState(() {
          isClick = !isClick;
        });
      },
      child: Padding(
        padding: EdgeInsets.only(bottom: 10.h),
        child: Container(
          height: isClick ? 50.h : 160.h,
          decoration: BoxDecoration(
              color: AppColors.light_background_color.withOpacity(0.4),
              borderRadius: BorderRadius.circular(10.w)),
          child: Padding(
            padding: EdgeInsets.all(10.w),
            child: isClick
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      mediumRaisenBlackText(title),
                      Container(
                        height: 25.h,
                        width: 25.w,
                        decoration: BoxDecoration(
                            color: AppColors.majorelle_blue_color
                                .withOpacity(0.05),
                            shape: BoxShape.circle),
                        child: Center(
                            child: FaIcon(
                          FontAwesomeIcons.chevronDown,
                          size: 13.w,
                          color: AppColors.majorelle_blue_color,
                        )),
                      )
                    ],
                  )
                : Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          mediumRaisenBlackText(title),
                          Container(
                            height: 25.h,
                            width: 25.w,
                            decoration: BoxDecoration(
                                color: AppColors.majorelle_blue_color
                                    .withOpacity(0.05),
                                shape: BoxShape.circle),
                            child: Center(
                                child: FaIcon(
                              FontAwesomeIcons.chevronDown,
                              size: 13.w,
                              color: AppColors.majorelle_blue_color,
                            )),
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5.h, bottom: 5.h),
                        child: profileDivider(),
                      ),
                      dialogNormalText(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum venenatis et lectus ac gravida. Aliquam id augue urna. Pellentesque eros leo, euismod vel tristique in, tincidunt sed nibh. Praesent condimentum a nulla in imperdiet.",
                          AppColors.spanish_grey_color)
                    ],
                  ),
          ),
        ),
      ),
    );
  });
}
