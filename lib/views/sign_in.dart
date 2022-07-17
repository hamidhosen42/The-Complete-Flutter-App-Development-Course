// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_final_fields, must_be_immutable, unused_field, use_key_in_widget_constructors

import 'package:firbase_email_password_google_auth/views/sign_up.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../helper/auth_helper.dart';
import 'phone_auth.dart';

class SignIn extends StatelessWidget {
  TextEditingController _email = TextEditingController();
  TextEditingController _pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Sign In Page",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                TextField(
                  controller: _email,
                  decoration: InputDecoration(hintText: "Enter your email"),
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  controller: _pass,
                  decoration: InputDecoration(hintText: "Enter your Password"),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      final userEmail = _email.text;
                      final userPass = _pass.text;

                      var obj = AuthHelper();
                      obj.signIn(userEmail, userPass, context);
                    },
                    child: Text("Sign In",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25))),
                TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          CupertinoPageRoute(builder: (_) => SignUp()));
                    },
                    child: Text("Don't have any account ? SignUp")),
                ElevatedButton(
                    onPressed: () {
                      var obj = AuthHelper();
                      obj.signInWithGoogle(context);
                    },
                    child: Text("Sign in Google")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          CupertinoPageRoute(builder: (_) => PhoneAuth()));
                    },
                    child: Text("Phone Auth Page")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
