// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, unused_field, unused_local_variable, sized_box_for_whitespace, avoid_unnecessary_containers, avoid_print
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firbase_email_password_google_auth/croud_operation/add_new_course.dart';
import 'package:firbase_email_password_google_auth/croud_operation/update_course.dart';
import 'package:flutter/material.dart';

class CroudOperation extends StatefulWidget {
  @override
  State<CroudOperation> createState() => _CroudOperationState();
}

class _CroudOperationState extends State<CroudOperation> {
  addNewCourse() {
    return showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        context: context,
        builder: (context) => AddNewCourse());
  }

  final Stream<QuerySnapshot> _courseStream =
      FirebaseFirestore.instance.collection('courses').snapshots();

  Future<void> updateCourse(selectId,title,description,img) {
    return showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        context: context,
        builder: (context) => UpdateCourse(selectId,title,description,img));

    // return FirebaseFirestore.instance
    //     .collection('courses')
    //     .doc('ABC123')
    //     .update({'company': 'Stokes and Sons'})
    //     .then((value) => print("User Updated"))
    //     .catchError((error) => print("Failed to update user: $error"));
  }

  Future<void> deleteCourse(selectedDocument) {
    return FirebaseFirestore.instance
        .collection('courses')
        .doc(selectedDocument)
        .delete()
        .then((value) => print("Courses Deleted"))
        .catchError((error) => print("Failed to delete Course: $error"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Courses"),
          backgroundColor: Colors.amber,
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {
                  addNewCourse();
                },
                icon: Icon(Icons.add)),
          ],
        ),
        body: StreamBuilder<QuerySnapshot>(
          stream: _courseStream,
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasError) {
              return Center(child: Text('Something went wrong'));
            }

            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            }

            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListView(
                children: snapshot.data!.docs.map((DocumentSnapshot document) {
                  Map<String, dynamic> data =
                      document.data()! as Map<String, dynamic>;
                  return Stack(
                    children: [
                      Card(
                        child: Container(
                          height: 200,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Container(
                                      width: double.maxFinite,
                                      child: Image.network(
                                        data["img"],
                                        fit: BoxFit.cover,
                                      )),
                                ),
                                Center(
                                    child: Text(
                                  data["course_name"],
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                )),
                                Center(
                                    child: Text(
                                  data["course_details"],
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ))
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                          child: Card(
                        child: Container(
                          height: 60,
                          width: 120,
                          child: Row(
                            children: [
                              IconButton(
                                  onPressed: () {
                                    updateCourse(document.id,data["course_name"],data["course_details"],data["img"]);
                                  },
                                  icon: Icon(
                                    Icons.edit,
                                    color: Colors.amber,
                                  )),
                              IconButton(
                                  onPressed: () {
                                    deleteCourse(document.id);
                                  },
                                  icon: Icon(
                                    Icons.remove,
                                    color: Colors.red,
                                  )),
                            ],
                          ),
                        ),
                      )),
                    ],
                  );
                }).toList(),
              ),
            );
          },
        ));
  }
}
