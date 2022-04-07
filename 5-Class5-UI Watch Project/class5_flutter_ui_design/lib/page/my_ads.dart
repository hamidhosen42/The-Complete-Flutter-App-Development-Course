// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables

import 'package:class5_flutter_ui_design/TebBar/myAddGrid.dart';
import 'package:class5_flutter_ui_design/TebBar/favourites.dart';
import 'package:flutter/material.dart';

class MyAds extends StatelessWidget {
  MyAds({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "My Ads",
            style: TextStyle(color: Colors.black, fontSize: 25),
          ),
          centerTitle: true,
          bottom: TabBar(labelColor: Colors.black, tabs: [
            Tab(
              text: "My Ads",
              icon: Icon(Icons.add_card_outlined),
            ),
            Tab(
              text: "My Favourites",
              icon: Icon(Icons.favorite_outline),
            )
          ]),
        ),
        body: TabBarView(
          children: [
            AddCard(),
            Favourites(),
          ],
        ),
      ),
    );
  }
}
