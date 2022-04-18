// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../const/app_colors.dart';

class ClassRadio extends StatefulWidget {
  const ClassRadio({Key? key}) : super(key: key);

  @override
  _ClassRadioState createState() => _ClassRadioState();
}

class _ClassRadioState extends State<ClassRadio> {
  int _radioSelected = 1;
  String? _radioVal;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 25.h,
            child: Row(
              children: [
                Radio(
                  value: 1,
                  groupValue: _radioSelected,
                  activeColor: AppColors.majorelle_blue_color,
                  onChanged: (value) {
                    setState(() {
                      _radioSelected = value as int;
                      _radioVal = 'Economy';
                      print(_radioVal);
                    });
                  },
                ),
                Text(
                  "Economy",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.eerie_black_color,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          SizedBox(
            height: 25.h,
            child: Row(
              children: [
                Radio(
                  value: 2,
                  groupValue: _radioSelected,
                  activeColor: AppColors.majorelle_blue_color,
                  onChanged: (value) {
                    setState(() {
                      _radioSelected = value as int;
                      _radioVal = 'Business';
                      print(_radioVal);
                    });
                  },
                ),
                Text(
                  "Business",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.eerie_black_color,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          SizedBox(
            height: 25.h,
            child: Row(
              children: [
                Radio(
                  value: 3,
                  groupValue: _radioSelected,
                  activeColor: AppColors.majorelle_blue_color,
                  onChanged: (value) {
                    setState(() {
                      _radioSelected = value as int;
                      _radioVal = 'First Class';
                      print(_radioVal);
                    });
                  },
                ),
                Text(
                  "First Class",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.eerie_black_color,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SortRadio extends StatefulWidget {
  const SortRadio({Key? key}) : super(key: key);

  @override
  _SortRadioState createState() => _SortRadioState();
}

class _SortRadioState extends State<SortRadio> {
  int _radioSelected = 1;
  String? _radioVal;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 25.h,
            child: Row(
              children: [
                Radio(
                  value: 1,
                  groupValue: _radioSelected,
                  activeColor: AppColors.majorelle_blue_color,
                  onChanged: (value) {
                    setState(() {
                      _radioSelected = value as int;
                      _radioVal = 'Cheapest';
                      print(_radioVal);
                    });
                  },
                ),
                Text(
                  "Cheapest",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.eerie_black_color,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          SizedBox(
            height: 25.h,
            child: Row(
              children: [
                Radio(
                  value: 2,
                  groupValue: _radioSelected,
                  activeColor: AppColors.majorelle_blue_color,
                  onChanged: (value) {
                    setState(() {
                      _radioSelected = value as int;
                      _radioVal = 'Fastest';
                      print(_radioVal);
                    });
                  },
                ),
                Text(
                  "Fastest",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.eerie_black_color,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          SizedBox(
            height: 25.h,
            child: Row(
              children: [
                Radio(
                  value: 3,
                  groupValue: _radioSelected,
                  activeColor: AppColors.majorelle_blue_color,
                  onChanged: (value) {
                    setState(() {
                      _radioSelected = value as int;
                      _radioVal = 'Early take off';
                      print(_radioVal);
                    });
                  },
                ),
                Text(
                  "Early take off",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.eerie_black_color,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          SizedBox(
            height: 25.h,
            child: Row(
              children: [
                Radio(
                  value: 4,
                  groupValue: _radioSelected,
                  activeColor: AppColors.majorelle_blue_color,
                  onChanged: (value) {
                    setState(() {
                      _radioSelected = value as int;
                      _radioVal = 'Late take off';
                      print(_radioVal);
                    });
                  },
                ),
                Text(
                  "Late take off",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.eerie_black_color,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          SizedBox(
            height: 25.h,
            child: Row(
              children: [
                Radio(
                  value: 5,
                  groupValue: _radioSelected,
                  activeColor: AppColors.majorelle_blue_color,
                  onChanged: (value) {
                    setState(() {
                      _radioSelected = value as int;
                      _radioVal = 'Landing early';
                      print(_radioVal);
                    });
                  },
                ),
                Text(
                  "Landing early",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.eerie_black_color,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          SizedBox(
            height: 25.h,
            child: Row(
              children: [
                Radio(
                  value: 6,
                  groupValue: _radioSelected,
                  activeColor: AppColors.majorelle_blue_color,
                  onChanged: (value) {
                    setState(() {
                      _radioSelected = value as int;
                      _radioVal = 'Landing late';
                      print(_radioVal);
                    });
                  },
                ),
                Text(
                  "Landing late",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.eerie_black_color,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class StopsRadio extends StatefulWidget {
  const StopsRadio({Key? key}) : super(key: key);

  @override
  _StopsRadioState createState() => _StopsRadioState();
}

class _StopsRadioState extends State<StopsRadio> {
  int _radioSelected = 1;
  String? _radioVal;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 25.h,
            child: Row(
              children: [
                Radio(
                  value: 1,
                  groupValue: _radioSelected,
                  activeColor: AppColors.majorelle_blue_color,
                  onChanged: (value) {
                    setState(() {
                      _radioSelected = value as int;
                      _radioVal = 'Non-stop flights only';
                      print(_radioVal);
                    });
                  },
                ),
                Text(
                  "Non-stop flights only",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.eerie_black_color,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          SizedBox(
            height: 25.h,
            child: Row(
              children: [
                Radio(
                  value: 2,
                  groupValue: _radioSelected,
                  activeColor: AppColors.majorelle_blue_color,
                  onChanged: (value) {
                    setState(() {
                      _radioSelected = value as int;
                      _radioVal = 'Max 1 stop flights only';
                      print(_radioVal);
                    });
                  },
                ),
                Text(
                  "Max 1 stop flights only",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.eerie_black_color,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          SizedBox(
            height: 25.h,
            child: Row(
              children: [
                Radio(
                  value: 3,
                  groupValue: _radioSelected,
                  activeColor: AppColors.majorelle_blue_color,
                  onChanged: (value) {
                    setState(() {
                      _radioSelected = value as int;
                      _radioVal = 'All flights';
                      print(_radioVal);
                    });
                  },
                ),
                Text(
                  "All flights",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.eerie_black_color,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ReasonForCancellationRadio extends StatefulWidget {
  const ReasonForCancellationRadio({Key? key}) : super(key: key);

  @override
  _ReasonForCancellationRadioState createState() =>
      _ReasonForCancellationRadioState();
}

class _ReasonForCancellationRadioState
    extends State<ReasonForCancellationRadio> {
  int _radioSelected = 1;
  String? _radioVal;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 25.h,
            child: Row(
              children: [
                Radio(
                  value: 1,
                  groupValue: _radioSelected,
                  activeColor: AppColors.majorelle_blue_color,
                  onChanged: (value) {
                    setState(() {
                      _radioSelected = value as int;
                      _radioVal = 'Wrong flight booking';
                      print(_radioVal);
                    });
                  },
                ),
                Text(
                  "Wrong flight booking",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.eerie_black_color,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          SizedBox(
            height: 25.h,
            child: Row(
              children: [
                Radio(
                  value: 2,
                  groupValue: _radioSelected,
                  activeColor: AppColors.majorelle_blue_color,
                  onChanged: (value) {
                    setState(() {
                      _radioSelected = value as int;
                      _radioVal = 'Cash Issue';
                      print(_radioVal);
                    });
                  },
                ),
                Text(
                  "Cash Issue",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.eerie_black_color,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          SizedBox(
            height: 25.h,
            child: Row(
              children: [
                Radio(
                  value: 3,
                  groupValue: _radioSelected,
                  activeColor: AppColors.majorelle_blue_color,
                  onChanged: (value) {
                    setState(() {
                      _radioSelected = value as int;
                      _radioVal = 'Booking By Mistake';
                      print(_radioVal);
                    });
                  },
                ),
                Text(
                  "Booking By Mistake",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.eerie_black_color,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BookingCancellationRadio extends StatefulWidget {
  const BookingCancellationRadio({Key? key}) : super(key: key);

  @override
  _BookingCancellationRadioState createState() =>
      _BookingCancellationRadioState();
}

class _BookingCancellationRadioState extends State<BookingCancellationRadio> {
  int _radioSelected = 1;
  String? _radioVal;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 25.h,
            child: Row(
              children: [
                Radio(
                  value: 1,
                  groupValue: _radioSelected,
                  activeColor: AppColors.majorelle_blue_color,
                  onChanged: (value) {
                    setState(() {
                      _radioSelected = value as int;
                      _radioVal = 'Wrong Ride booking';
                      print(_radioVal);
                    });
                  },
                ),
                Text(
                  "Wrong Ride booking",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.eerie_black_color,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          SizedBox(
            height: 25.h,
            child: Row(
              children: [
                Radio(
                  value: 2,
                  groupValue: _radioSelected,
                  activeColor: AppColors.majorelle_blue_color,
                  onChanged: (value) {
                    setState(() {
                      _radioSelected = value as int;
                      _radioVal = 'Cash Issue';
                      print(_radioVal);
                    });
                  },
                ),
                Text(
                  "Cash Issue",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.eerie_black_color,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          SizedBox(
            height: 25.h,
            child: Row(
              children: [
                Radio(
                  value: 3,
                  groupValue: _radioSelected,
                  activeColor: AppColors.majorelle_blue_color,
                  onChanged: (value) {
                    setState(() {
                      _radioSelected = value as int;
                      _radioVal = 'Booking By Mistake';
                      print(_radioVal);
                    });
                  },
                ),
                Text(
                  "Booking By Mistake",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.eerie_black_color,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          SizedBox(
            height: 25.h,
            child: Row(
              children: [
                Radio(
                  value: 4,
                  groupValue: _radioSelected,
                  activeColor: AppColors.majorelle_blue_color,
                  onChanged: (value) {
                    setState(() {
                      _radioSelected = value as int;
                      _radioVal = 'Want to change Ride';
                      print(_radioVal);
                    });
                  },
                ),
                Text(
                  "Want to change Ride",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.eerie_black_color,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          SizedBox(
            height: 25.h,
            child: Row(
              children: [
                Radio(
                  value: 5,
                  groupValue: _radioSelected,
                  activeColor: AppColors.majorelle_blue_color,
                  onChanged: (value) {
                    setState(() {
                      _radioSelected = value as int;
                      _radioVal = 'Mood Changed';
                      print(_radioVal);
                    });
                  },
                ),
                Text(
                  "Mood Changed",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.eerie_black_color,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          SizedBox(
            height: 25.h,
            child: Row(
              children: [
                Radio(
                  value: 6,
                  groupValue: _radioSelected,
                  activeColor: AppColors.majorelle_blue_color,
                  onChanged: (value) {
                    setState(() {
                      _radioSelected = value as int;
                      _radioVal = 'Other';
                      print(_radioVal);
                    });
                  },
                ),
                Text(
                  "Other",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.eerie_black_color,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}