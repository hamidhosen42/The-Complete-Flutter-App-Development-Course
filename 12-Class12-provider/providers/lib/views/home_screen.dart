// // ignore_for_file: prefer_const_literals_to_create_immutables, must_be_immutable, use_key_in_widget_constructors, prefer_const_constructors, prefer_final_fields

// ignore_for_file: unused_local_variable, prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, prefer_final_fields, must_be_immutable, unused_field

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/provider/todo_provider.dart';
import 'package:providers/views/details_screen.dart';

class HomeScreen extends StatelessWidget {
  TextEditingController _titleController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final todos = Provider.of<TodoProvider>(context);
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Todos Length:${todos.todos.length}"),
        actions: [
          IconButton(onPressed: () {
            Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (_) =>DetailsScreen()));
          }, icon: Icon(Icons.arrow_forward)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (_) => AlertDialog(
                    title: Text("Add New Todo"),
                    content: Column(
                      children: [
                        TextField(
                          controller: _titleController,
                          decoration: InputDecoration(hintText: "Title"),
                        ),
                        TextField(
                          controller: _descriptionController,
                          decoration: InputDecoration(hintText: "Description"),
                        ),
                        ElevatedButton(
                            onPressed: () {
                              final title = _titleController.text;
                              final description = _descriptionController.text;

                              todos.addNewTodo(title, description);
                              Navigator.pop(context);
                            },
                            child: Text("Add"))
                      ],
                    ),
                  ));
        },
        child: Icon(Icons.add),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: todos.todos.length,
          itemBuilder: (context, index) => Card(
            child: ListTile(
              // dense: true,
              title: Text(todos.todos[index].title),
              subtitle: Text(todos.todos[index].description),
              trailing: IconButton(
                onPressed: () {
                  todos.deleteTodo(index);
                },
                icon: Icon(Icons.remove_circle),
              ),
            ),
          ),
        ),
      ),
    ));
  }
}








// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// import 'details_screen.dart';

// class HomeScreen extends StatefulWidget {
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   int balance = 1000;

//   int _counter = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text("Home Screen"),
//             Text(balance.toString()),
//             Text(
//               _counter.toString(),
//               style: TextStyle(fontSize: 50),
//             ),
//             TextButton(
//                 onPressed: () {
//                   Navigator.push(
//                       context,
//                       CupertinoPageRoute(
//                           builder: (_) => DetailsScreen(
//                                 balance: balance,
//                               )));
//                 },
//                 child: Text("Go to Details Page")),
//             TextButton(
//                 onPressed: () {
//                   setState(() {
//                     _counter = _counter + 1;
//                   });
//                 },
//                 child: Text("Increment"))
//           ],
//         ),
//       ),
//     );
//   }
// }