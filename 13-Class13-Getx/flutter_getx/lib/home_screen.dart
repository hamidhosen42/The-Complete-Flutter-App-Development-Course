// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, prefer_final_fields, unused_field, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_getx/second_screen.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'model/data.dart';

// import 'second_screen.dart';

class HomeScreen extends StatelessWidget {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _ageController = TextEditingController();

  var _counter = 0.obs;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        Get.to(() => SecondScreen());
      }),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                controller: _nameController,
                decoration: InputDecoration(hintText: "Enter your name:"),
              ),
              TextField(
                controller: _ageController,
                decoration: InputDecoration(hintText: "Enter your age:"),
              ),
              ElevatedButton(
                  onPressed: () {
                    final names = _nameController.text;
                    final ages = _ageController.text;
                    final box = GetStorage();

                    box.write("data", MyData(name: names, age: ages));

                    print("Added");
                  },
                  child: Text("Add")),
              ElevatedButton(
                  onPressed: () {
                    _counter + 1;
                  },
                  child: Obx(() => Text(_counter.toString()))),

              // TextButton(
              //     onPressed: () {
              //       Get.to(SecondScreen());
              //     },
              //     child: Text("Go to Second")),
              // TextButton(
              //     onPressed: () {
              //       Get.snackbar("Hamid Hosen", "East Delta University");
              //     },
              //     child: Text("Click")),
              // TextButton(
              //     onPressed: () {
              //       Get.defaultDialog(title: "Md.Hamid Hosen");
              //     },
              //     child: Text("Click")),
            ],
          ),
        ),
      ),
    ));
  }
}
