// ignore_for_file: unused_local_variable, avoid_print, no_leading_underscores_for_local_identifiers, unnecessary_nullable_for_final_variable_declarations

import 'package:firbase_email_password_google_auth/views/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthHelper {
  final box = GetStorage();

  Future signUp(email, pass, context) async {
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: pass,
      );

      var authCredential = userCredential.user;
      print(authCredential);

      if (authCredential!.uid.isNotEmpty) {
        box.write("id", authCredential.uid);
        Navigator.push(context,
            CupertinoPageRoute(builder: (_) => HomeScreen(authCredential)));
        // ignore: prefer_const_constructors
        SnackBar(content: Text("Sign Up Sucessfully"));
      } else {
        // ignore: prefer_const_constructors
        SnackBar(content: Text("Sign Up Failed"));
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  Future signIn(email, pass, context) async {
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: pass,
      );

      var authCredential = userCredential.user;
      print(authCredential);

      if (authCredential!.uid.isNotEmpty) {
        Navigator.push(context,
            CupertinoPageRoute(builder: (_) => HomeScreen(authCredential)));
        // ignore: prefer_const_constructors
        SnackBar(content: Text("Sign In Sucessfully"));
      } else {
        // ignore: prefer_const_constructors
        SnackBar(content: Text("Sign In Failed"));
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    } catch (e) {
      print(e);
    }
  }

  Future signInWithGoogle(context) async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    UserCredential _userCredential =
        await FirebaseAuth.instance.signInWithCredential(credential);
    User? _user = _userCredential.user;

    if (_user!.uid.isNotEmpty) {
      Navigator.push(
          context, CupertinoPageRoute(builder: (_) => HomeScreen(_user)));
      // ignore: prefer_const_constructors
      // ignore: prefer_const_constructors
    } else {
      // ignore: prefer_const_constructors
      SnackBar(content: Text("Sometimes is wrong"));
    }
  }
}