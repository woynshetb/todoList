import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/main.dart';
import 'package:todo/model/task.dart';
import 'package:todo/model/task_data.dart';
import '../widgets/task_tile.dart';

class AddTaskScreen extends StatefulWidget {
  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
            )),
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "New Task",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, color: Colors.teal),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText) {
                text = newText;
              },
            ),
            Consumer<TaskData>(builder: (context, task, child) {
              return FlatButton(
                  color: Colors.teal,
                  onPressed: () {
                    task.addTask(text);
                    print(text);
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Add",
                    style: TextStyle(color: Colors.white),
                  ));
            })
          ],
        ),
      ),
    );
  }
}
