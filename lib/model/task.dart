import 'package:flutter/material.dart';

class Task {
  String name;
  bool isDone;
  Task({this.isDone = false, this.name});
  // we dont pass isdone value we call this function
  void toogleIsDone() {
    isDone = !isDone;
  }
}
