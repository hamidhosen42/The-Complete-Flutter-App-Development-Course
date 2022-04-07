// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';

class Listing extends StatelessWidget {
  const Listing({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: 15,
        itemBuilder: (context, index) {
          return Card(
            shadowColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("images/img/image.png"),
              ),
              trailing: Text(
                "\$ 359",
                style: TextStyle(color: Color(0xFF5956E9), fontSize: 17),
              ),
              // title: Text(name[index]),
              title: Text(
                "Apple Watch",
                style: TextStyle(fontSize: 20),
              ),
              subtitle: Text("Series 6, Red"),
              focusColor: Colors.yellowAccent,
            ),
          );
        },
      ),
    );
  }
}