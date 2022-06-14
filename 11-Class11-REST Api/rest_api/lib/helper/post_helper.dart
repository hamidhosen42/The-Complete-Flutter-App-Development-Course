// ignore_for_file: unused_local_variable, avoid_print
import 'dart:convert';

import 'package:http/http.dart' as http;
import '../model/post.dart';
// import 'package:/rest_api/model/post.dart';

class PostHelper {
  //get data or load data
  Future<List<Post>> getPost() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return PostFromJson(response.body);
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load data');
    }
  }

  // post data
  Future addPost(title) async {
    var response = await http.post(
      Uri.parse('https://jsonplaceholder.typicode.com/posts'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'title': title,
      }),
    );

    print(response.body);
  }
}