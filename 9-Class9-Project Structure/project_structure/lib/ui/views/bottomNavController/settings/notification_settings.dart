import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../const/app_colors.dart';
import '../../../styles/styles.dart';
import '../../../widgets/app_text.dart';

class NotificationSettings extends StatefulWidget {
  const NotificationSettings({Key? key}) : super(key: key);

  @override
  _NotificationSettingsState createState() => _NotificationSettingsState();
}

class _NotificationSettingsState extends State<NotificationSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightcolor,
      appBar: leadingTitleAppBar("Notification settings"),
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
                children: [
                  notificationSwitch("Allow notifications"),
                  notificationSwitch("Push notifications"),
                  notificationSwitch("Email notifications"),
                  notificationSwitch("Remind me scheduled rides"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget notificationSwitch(text) {
  bool _switchValue = true;
  return StatefulBuilder(builder: (context, setState) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.h),
      child: Container(
        height: 50.h,
        decoration: BoxDecoration(
            color: Color(0xffFAFAFA).withOpacity(0.7),
            borderRadius: BorderRadius.circular(5.w)),
        child: Padding(
          padding: EdgeInsets.all(10.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              mediumRaisenBlackText(text),
              Transform.scale(
                scale: 0.6,
                child: CupertinoSwitch(
                  value: _switchValue,
                  activeColor: AppColors.green_color,
                  onChanged: (value) {
                    setState(() {
                      _switchValue = value;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  });
}
