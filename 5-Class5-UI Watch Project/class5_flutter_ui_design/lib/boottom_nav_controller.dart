// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import 'page/account.dart';
import 'page/add.dart';
import 'page/chats.dart';
import 'page/home_screen.dart';
import 'page/my_ads.dart';

class BoottomNavController extends StatefulWidget {
  const BoottomNavController({Key? key}) : super(key: key);

  @override
  State<BoottomNavController> createState() => _BoottomNavControllerState();
}

class _BoottomNavControllerState extends State<BoottomNavController> {
  int _curentIndex = 0;
  final _pages = [HomeScreen(), MyAds(), Add(), Chat(), Account()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _curentIndex,
        onTap: (index) {
          setState(() {
            _curentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shop_outlined), label: "My Ads"),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_outline), label: "Add"),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat_outlined), label: "Chat"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: "Account"),
        ],
        selectedItemColor: Color(0xFF5364F4),
        unselectedItemColor: Color(0xFFC4C4C4),
      ),
      body: _pages[_curentIndex],
    );
  }
}