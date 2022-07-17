// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields, must_be_immutable, unused_field, unused_local_variable

import 'package:firbase_email_password_google_auth/helper/auth_helper.dart';
import 'package:flutter/material.dart';

class PhoneAuth extends StatelessWidget {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _controller,
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {

                    AuthHelper().phoneAuth(_controller.text, context);
                  },
                  child: Text("Phone"))
            ],
          ),
        ),
      ),
    );
  }
}