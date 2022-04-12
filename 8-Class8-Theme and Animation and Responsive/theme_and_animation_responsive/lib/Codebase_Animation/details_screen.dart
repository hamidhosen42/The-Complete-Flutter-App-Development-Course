// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          Hero(
            tag: '1',
            child: Image.network(
                "https://media.istockphoto.com/photos/st-marteen-picture-id478958514?b=1&k=20&m=478958514&s=170667a&w=0&h=dR9QmxJTJ0yo7CG-2pOQgZxBllylNjRz_q3Gyj6kJy0="),
          ),
          Center(
            child: Text(
              "Saint Martin is part of the Leeward Islands in the Caribbean Sea. It comprises 2 separate countries, divided between its northern French side, called Saint-Martin, and its southern Dutch side, Sint Maarten. The island is home to busy resort beaches and secluded coves. It's also known for fusion cuisine, vibrant nightlife and duty-free shops selling jewelry and liquor",
              style: TextStyle(fontSize: 20, fontStyle: FontStyle.normal),
            ),
          ),
        ],
      ),
    ));
  }
}
