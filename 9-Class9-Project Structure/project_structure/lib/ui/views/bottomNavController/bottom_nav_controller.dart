// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

import '../../../const/app_colors.dart';
import 'main_home/home_screen.dart';
import 'notification/notification_screen.dart';
import 'search/search_screen.dart';
import 'settings/settings_screen.dart';
import 'troffy/troffy_screen.dart';

class BottomNavController extends StatefulWidget {
  @override
  _BottomNavControllerState createState() => _BottomNavControllerState();
}

class _BottomNavControllerState extends State<BottomNavController> {
  int _pageIndex = 2;
  PageController _pageController = PageController();

  List<Widget> tabPages = [
    TroffyScreen(),
    NoftificationScreen(),
    HomeScreen(),
    SearchScreen(),
    SettingsScreeen()
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _pageIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: DotNavigationBar(
          currentIndex: _pageIndex,
          onTap: onTabTapped,
          paddingR: EdgeInsets.all(0),
          selectedItemColor: AppColors.majorelle_blue_color,
          marginR: EdgeInsets.all(0),
          itemPadding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 20.w),
          borderRadius: 0,
          items: [
            DotNavigationBarItem(
              icon: Icon(Icons.emoji_events_outlined),
            ),
            DotNavigationBarItem(
              icon: Icon(Icons.notifications_outlined),
            ),
            DotNavigationBarItem(
              icon: Icon(Icons.home_outlined),
            ),
            DotNavigationBarItem(
              icon: Icon(Icons.search),
            ),
            DotNavigationBarItem(
              icon: Icon(Icons.settings),
            ),
          ],
        ),
        body: PageView(
          children: tabPages,
          onPageChanged: onPageChanged,
          controller: _pageController,
        ),
      ),
    );
  }

  void onPageChanged(int page) {
    setState(() {
      _pageIndex = page;
    });
  }

  void onTabTapped(int index) {
    _pageController.animateToPage(index,
        duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
  }
}
