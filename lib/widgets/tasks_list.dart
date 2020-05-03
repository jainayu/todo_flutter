import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoflutter/models/task_data.dart';
import 'package:todoflutter/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          final task = taskData.tasks[index];
          return TaskTile(
            taskName: task.name,
            value: task.isCompleted,
            checkboxCallback: (newValue) {
              taskData.updateTask(task);
            },
            longPressCallback: () {
              taskData.deleteTask(task);
            },
          );
        },
        itemCount: taskData.tasksLength,
      );
    });
  }
}
