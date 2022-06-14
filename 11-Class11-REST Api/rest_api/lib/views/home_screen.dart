// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable, sort_child_properties_last, prefer_const_literals_to_create_immutables, prefer_final_fields, unused_local_variable, use_build_context_synchronously
import 'package:flutter/material.dart';
import 'package:rest_api/helper/post_helper.dart';
import '../model/post.dart';

class HomeScrenn extends StatefulWidget {
  @override
  State<HomeScrenn> createState() => _HomeScrennState();
}

class _HomeScrennState extends State<HomeScrenn> {
  TextEditingController _controller = TextEditingController();

  List<Post>? posts;

  bool isLoaded = false;

  getData() async {
    posts = await PostHelper().getPost();
    setState(() {
      isLoaded = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    getData();
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (_) => AlertDialog(
                      title: Text("Add a Post"),
                      content: Column(
                        children: [
                          TextField(
                            controller: _controller,
                          ),
                          ElevatedButton(
                              onPressed: () async {
                                final userInput = _controller.text;
                                await PostHelper().addPost(userInput);
                                Navigator.pop(context);
                                setState(() {});
                              },
                              child: Text("Add"))
                        ],
                      ),
                    ));
            // Navigator.pop(context);
          },
          child: Icon(Icons.add),
        ),
        body: Visibility(
          visible: isLoaded,
          child: ListView.builder(
              itemCount: posts?.length ?? 0,
              itemBuilder: (_, index) {
                return Card(
                  child: ListTile(
                    dense: true,
                    title: Text(posts![index].title),
                    subtitle: Text(posts![index].body),
                  ),
                );
              }),
          replacement: Center(child: CircularProgressIndicator()),
        ));
  }
}