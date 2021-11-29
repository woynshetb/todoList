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
      backgroundColor: Colors.brown,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xffe4cda5),
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
            children: [
              SizedBox(
                height: 50,
              ),
              Center(
                child: Text(
                  "To-do",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.w700),
                ),
              ),
              Text(
                "nuber of Task you want to accomplish \n",
                style: TextStyle(color: Colors.white),
              ),
              Text(
                "  ${Provider.of<TaskData>(context).listCount}",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 50,
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
        Container(
          height: 100,
          decoration: BoxDecoration(color: Colors.brown),
          child: Center(
              child: Text(
            "Good luck ",
            style: TextStyle(color: Colors.white, fontSize: 20),
          )),
        ),
      ]),
    );
  }
}
