// ignore_for_file: prefer_const_constructors

import 'package:firbase_email_password_google_auth/payment/payment_controller.dart';
import 'package:flutter/material.dart';

class PaymentHomeScreen extends StatefulWidget {
  const PaymentHomeScreen({Key? key}) : super(key: key);

  @override
  State<PaymentHomeScreen> createState() => _PaymentHomeScreenState();
}

class _PaymentHomeScreenState extends State<PaymentHomeScreen> {
  var obj = PaymentController();
  @override
  Widget build(BuildContext context) {
    // final PaymentController controller = Get.put(PaymentController());

    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => obj.makePayment(amount: '5', currency: 'USD'),
          child: Text('Make A Payment'),
        ),
      ),
    );
  }
}