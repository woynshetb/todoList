import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/model/task.dart';
import 'package:todo/model/task_data.dart';
import 'package:todo/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, listData, child) {
        return listData.lists.length == 0
            ? Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: listData.lists.length,
                itemBuilder: (context, index) {
                  return TaskTile(
                      isChecked: listData.lists[index].isDone,
                      title: listData.lists[index].name,
                      checkBoxCallBack: (checkboxSate) {
                        listData.updateTask(listData.lists[index]);
                      });
                });
      },
    );
  }
}
