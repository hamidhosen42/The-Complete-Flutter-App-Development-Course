// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, unused_field, prefer_final_fields, must_be_immutable, avoid_unnecessary_containers, unnecessary_new

import 'package:flutter/material.dart';

import '../Component/gridview.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  List<String> _categories = [
    "Food",
    "Electronics",
    "Groceries",
    "Dress",
    "Snack"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 20, left: 10),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello Hamid",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Color(0xFF000000)),
                ),
                Text(
                  "Let’s gets something?",
                  style: TextStyle(fontSize: 16, color: Color(0xFF4F4C4C)),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 120,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      itemCard(0xFFF46D38),
                      SizedBox(
                        width: 10,
                      ),
                      itemCard(0xFF3861F4),
                      SizedBox(
                        width: 10,
                      ),
                      itemCard(0xFFF46D38),
                      SizedBox(
                        width: 10,
                      ),
                      itemCard(0xFF3861F4),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Top Categories",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Color(0xFF000000)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Text(
                        "View All",
                        style:
                            TextStyle(fontSize: 14, color: Color(0xFFFF4800)),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 30,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _categories.length,
                      itemBuilder: (_, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color(0xFFC4C4C4),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                )),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, right: 10, top: 5, bottom: 5),
                              child: Center(
                                  child: Text(
                                _categories[index],
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal),
                              )),
                            ),
                          ),
                        );
                      }),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  // height: 1000,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Container(
                      width: double.infinity,
                      child: GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
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
                                padding: const EdgeInsets.only(bottom: 30),
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
                                            backgroundImage: AssetImage(
                                                "images/img/image.png"),
                                          ),
                                        )),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                          style: TextStyle(
                                              color: Color(0xFF868686)),
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }

  Widget itemCard(colors) {
    return Container(
      height: 120,
      width: 240,
      decoration: BoxDecoration(
          color: Color(colors),
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "40% Off During\nCovid 19",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Color(0xFFFFFFFF)),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomRight,
                child: Image.asset(
                  "images/img/img1.png",
                  height: 70,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
