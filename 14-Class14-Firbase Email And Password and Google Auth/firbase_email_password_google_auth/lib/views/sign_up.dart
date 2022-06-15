// ignore_for_file: prefer_final_fields, must_be_immutable, use_key_in_widget_constructors, unused_field, prefer_const_constructors, unused_local_variable

import 'package:firbase_email_password_google_auth/helper/auth_helper.dart';
import 'package:firbase_email_password_google_auth/views/sign_in.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
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
                  "Sign Up Page",
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
                      obj.signUp(userEmail, userPass, context);
                    },
                    child: Text("Sign Up",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25))),
                TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          CupertinoPageRoute(builder: (_) => SignIn()));
                    },
                    child: Text("Alredy creatded an account ? Login")),
               ElevatedButton(onPressed: () {
                  var obj=AuthHelper();
                  obj.signInWithGoogle(context);
                }, child: Text("Sign in Google")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}