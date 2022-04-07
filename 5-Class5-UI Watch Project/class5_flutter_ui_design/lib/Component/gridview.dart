// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Gridview extends StatelessWidget {
  const Gridview({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Container(
          width: double.infinity,
          child: GridView.builder(
            shrinkWrap: true,
            itemCount: 10,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 13 / 20,
            ),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Stack(
                      alignment: Alignment.topCenter,
                      // overflow: Overflow.visible,
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                            top: -50,
                            // left: 5,
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: CircleAvatar(
                                radius: 60,
                                backgroundImage:
                                    AssetImage("images/img/image.png"),
                              ),
                            )),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "Apple Watch",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Series 6, Red",
                              style: TextStyle(color: Color(0xFF868686)),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "\$ 359",
                              style: TextStyle(
                                  color: Color(0xFF5956E9),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 17),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 147, 209, 186),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
