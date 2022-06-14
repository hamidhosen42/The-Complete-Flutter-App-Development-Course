// ignore_for_file: unused_local_variable

import 'package:flutter/cupertino.dart';
import 'package:providers/model/todo.dart';

class TodoProvider extends ChangeNotifier{
  List<Todo> todos=[];

  addNewTodo(title,description){
    var newTodo=Todo(title: title, description: description);
    todos.add(newTodo);
    notifyListeners();
  }

  deleteTodo(index){
    todos.removeAt(index);
    notifyListeners();
  }
}
