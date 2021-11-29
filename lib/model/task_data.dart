import 'dart:collection';

import 'package:flutter/material.dart';
import './task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _list = [
    Task(name: 'buy milk'),
    Task(name: 'buy chocolate'),
    Task(name: 'buy food'),
    Task(name: 'buy chocolate'),
    Task(name: 'buy food'),
  ];

  UnmodifiableListView<Task> get lists {
    return UnmodifiableListView(_list);
  }

  int get listCount {
    return _list.length;
  }

  void addTask(String taskTitle) {
    final tasky = Task(name: taskTitle);
    _list.add(tasky);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toogleIsDone();
    _list.remove(task);
    notifyListeners();
  }
}
