import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_todo_c9_sun_11/firebase_utils.dart';
import 'package:flutter_app_todo_c9_sun_11/model/task.dart';

class ListProvider extends ChangeNotifier {
  List<Task> tasksList = [];

  void getAllTasksFromFireStore() async {
    QuerySnapshot<Task> querySnapshot =
        await FirebaseUtils.getTasksCollection().get();

    /// List<QueryDocumentSnapshot<Task> => List<Task>
    tasksList = querySnapshot.docs.map((doc) {
      return doc.data();
    }).toList();
    notifyListeners();
  }
}
