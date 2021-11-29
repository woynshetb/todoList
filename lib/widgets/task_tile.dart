import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String title;
  final Function checkBoxCallBack;

  TaskTile({this.isChecked, this.title, this.checkBoxCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          title,
          style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Checkbox(
          value: isChecked,
          activeColor: Colors.teal,
          onChanged: checkBoxCallBack,
        ));
  }
}
