import 'package:flutter/material.dart';
import 'package:todo/main.dart';
import 'package:todo/model/task.dart';
import 'package:todo/model/task_data.dart';
import 'package:todo/screens/addtaskScree.dart';
import 'package:todo/widgets/tasks_list.dart';
import 'package:provider/provider.dart';

class TasksScreen extends StatefulWidget {
  @override
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        child: Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
              context: context, builder: (context) => AddTaskScreen());
        },
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          padding: EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.list,
                  color: Colors.teal,
                  size: 30,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "To do list",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.w700),
              ),
              Text(
                "${Provider.of<TaskData>(context).listCount}",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                )),
            child: TasksList(),
          ),
        ),
      ]),
    );
  }
}
