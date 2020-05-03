import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool value;
  final String taskName;
  final Function checkboxCallback;
  final Function longPressCallback;

  TaskTile(
      {this.value,
      this.taskName,
      this.checkboxCallback,
      this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        taskName,
        style: TextStyle(
          decoration: value ? TextDecoration.lineThrough : null,
          fontSize: 25.0,
        ),
      ),
      trailing: Checkbox(
        activeColor: Color(0xFF1E2360),
        value: value,
        onChanged: checkboxCallback,
      ),
    );
  }
}
