// ignore_for_file: prefer_const_constructors, prefer_final_fields, no_leading_underscores_for_local_identifiers, avoid_print, use_build_context_synchronously, avoid_unnecessary_containers, must_be_immutable, use_key_in_widget_constructors

import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UpdateCourse extends StatefulWidget {
  String documentId;
  String courseTitle;
  String courseDetails;
  String courseImg;

  UpdateCourse(
      this.documentId, this.courseTitle, this.courseDetails, this.courseImg);

  @override
  State<UpdateCourse> createState() => _UpdateCourseState();
}

class _UpdateCourseState extends State<UpdateCourse> {
  TextEditingController _titleController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();

  XFile? _courseImage;
  String? imageUrl;

  chooseImageFromGallery() async {
    final ImagePicker _picker = ImagePicker();
    _courseImage = await _picker.pickImage(source: ImageSource.gallery);
    setState(() {});
  }

  // img url and database upload data
  updateData(selectedDocument) async {
    if (_courseImage == null) {
      CollectionReference _course =
          FirebaseFirestore.instance.collection("courses");
      _course.doc(selectedDocument).update({
        'course_name': _titleController.text,
        'course_details': _descriptionController.text,
        'img': widget.courseImg,
      });
      print("Successfullt added");
      Navigator.pop(context);
    } else {
      File imgFile = File(_courseImage!.path);
      FirebaseStorage _stroage = FirebaseStorage.instance;
      UploadTask _uploadTask =
          _stroage.ref('images').child(_courseImage!.name).putFile(imgFile);

      TaskSnapshot snapshot = await _uploadTask;
      imageUrl = await snapshot.ref.getDownloadURL();
      print(imageUrl);
      CollectionReference _course =
          FirebaseFirestore.instance.collection("courses");
      _course.doc(selectedDocument).update({
        'course_name': _titleController.text,
        'course_details': _descriptionController.text,
        'img': imageUrl,
      });
      print("Successfullt added");
      Navigator.pop(context);
    }
  }

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    _titleController.text = widget.courseTitle;
    _descriptionController.text = widget.courseDetails;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Column(
          children: [
            TextField(
              controller: _titleController,
              decoration: InputDecoration(hintText: "enter course title"),
            ),
            TextField(
              controller: _descriptionController,
              decoration: InputDecoration(hintText: "enter course details"),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                child: Center(
                  child: Material(
                      child: _courseImage == null
                          ? Stack(
                              children: [
                                Image.network(
                                  widget.courseImg,
                                  fit: BoxFit.cover,
                                ),
                                CircleAvatar(
                                  child: IconButton(
                                    onPressed: () => chooseImageFromGallery(),
                                    icon: Icon(Icons.photo),
                                  ),
                                )
                              ],
                            )
                          : Image.file(
                              File(_courseImage!.path),
                              fit: BoxFit.cover,
                            )),
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () => updateData(widget.documentId),
                child: Text("Update course")),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}