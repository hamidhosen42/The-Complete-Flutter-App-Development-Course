// To parse this JSON data, do
//
//     final Post = PostFromJson(jsonString);
// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

List<Post> PostFromJson(String str) =>
    List<Post>.from(json.decode(str).map((x) => Post.fromJson(x)));

String PostToJson(List<Post> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Post {
  Post({
    this.userId,
    this.id,
    required this.title,
    required this.body,
  });

  int? userId;
  int? id;
  String title;
  String body;

  factory Post.fromJson(Map<String, dynamic> json) => Post(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "body": body,
      };
}
