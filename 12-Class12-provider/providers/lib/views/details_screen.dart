// ignore_for_file: prefer_const_constructors, must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/provider/todo_provider.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final todos = Provider.of<TodoProvider>(context);
    return Scaffold(
        body: Center(
      child: Text("Todos Length: ${todos.todos.length}"),
    ));
  }
}


// ignore_for_file: prefer_const_constructors, must_be_immutable, use_key_in_widget_constructors

// import 'package:flutter/material.dart';

// class DetailsScreen extends StatelessWidget {
//   int balance;

//   DetailsScreen({required this.balance});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Text(balance.toString()),
//           ],
//         ),
//       ),
//     );
//   }
// }