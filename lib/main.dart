// ignore_for_file: prefer_const_constructors

import 'package:firbase_email_password_google_auth/payment/payment_homeScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

import 'views/splash_screen.dart';

// import 'views/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await GetStorage.init();
  Stripe.publishableKey =
      'pk_test_51L27YbK8JICyYw6jEoE5r8yiYV1s6mdUamcHJ9FJfvSe8EhRJzhRtGDwxdLLsZ4sbuCXms7heljCmPXfOnbJzwUQ00GchfnRDq';
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: SplashScreen(),
      // home:  CroudOperation(),
      home: PaymentHomeScreen(),
    );
  }
}
