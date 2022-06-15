// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class SecondScreen extends StatefulWidget {
  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  final box = GetStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        print(box.read("data"));
      }),
      body: Center(
        child: ListView.builder(
          itemBuilder: ((context, index) {
            return Card(
              child: ListTile(
                  title: Text("${box.read('data')["name"]}"),
                  subtitle: Text("${box.read('data')["age"]}")),
            );
          }),
        ),
      ),
    );
  }
}
