// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, must_be_immutable, prefer_final_fields

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  User _user;

  HomeScreen(this._user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () async {
                await FirebaseAuth.instance.signOut();
              },
              icon: Icon(Icons.logout)),
          CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage(_user.photoURL.toString()),
          )
        ],
      ),
      body: Center(
        child: Text(_user.email.toString()),
      ),
    );
  }
}
