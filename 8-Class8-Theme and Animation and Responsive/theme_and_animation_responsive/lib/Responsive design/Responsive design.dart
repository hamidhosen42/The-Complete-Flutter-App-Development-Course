// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResponsiveDesign extends StatefulWidget {
  const ResponsiveDesign({Key? key}) : super(key: key);

  @override
  State<ResponsiveDesign> createState() => _ResponsiveDesignState();
}

class _ResponsiveDesignState extends State<ResponsiveDesign> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // ------------------AspectRatio----------------

            SizedBox(
              height: 50,
            ),

            Text("AspectRatio"),
            AspectRatio(
              aspectRatio: 4 / 2, //wight/height
              child: Container(
                height: 200,
                width: 200,
                color: Colors.amber,
              ),
            ),

            SizedBox(
              height: 50,
            ),

            // -------------FittedBox----------------

            Text("FittedBox"),
            FittedBox(
              fit: BoxFit.fill,
              child: Row(
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    color: Colors.red,
                  ),
                  Container(
                    height: 200,
                    width: 200,
                    color: Colors.green,
                  ),
                  Container(
                    height: 200,
                    width: 200,
                    color: Colors.amber,
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 50,
            ),

            // ----------------FractionallySizedBox-----------
            Text("FractionallySizedBox"),
            Container(
              height: 300,
              width: 300,
              color: Colors.blue,
              child: FractionallySizedBox(
                heightFactor: 0.5,
                widthFactor: 0.5,
                child: Container(
                  color: Colors.green,
                ),
              ),
            ),

            SizedBox(
              height: 50,
            ),

            // -------------LayoutBuilder---------------
            Text("LayoutBuilder"),
            LayoutBuilder(builder: (context, constraints) {
              if (constraints.maxWidth < 480) {
                return Container(
                  height: 100,
                  width: 100,
                  color: Colors.green,
                );
              } else {
                return Container(
                  height: 200,
                  width: 200,
                  color: Colors.blue,
                );
              }
            }),

            // -----------MediaQuery------------
            SizedBox(
              height: 50,
            ),

            Text("MediaQuery"),
            Container(
              height: h / 3,
              width: w / 2,
              color: Colors.red,
            ),

            SizedBox(
              height: 50,
            ),

            // ----------------OrientationBuilder------

            Text("OrientationBuilder"),
            OrientationBuilder(
              builder: (_, orientation) {
                if (orientation == Orientation.portrait) {
                  return Center(
                    child: Text("Portrait"),
                  );
                } else {
                  return Center(
                    child: Text("landscape"),
                  );
                }
              },
            ),

            SizedBox(
              height: 50,
            ),

            // ------------flutter_screenutil 5.4.0------
            Text("flutter_screenutil"),
            Container(
              height: 200.h,
              width: 200.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
