// task_item.dart
import 'package:flutter/material.dart';
import 'package:your_app_name/models/task.dart';

class TaskItem extends StatelessWidget {
  final Task task;

  TaskItem({required this.task});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(task.title),
        subtitle: Text(task.description),
        trailing: IconButton(
          icon: Icon(Icons.delete),
          onPressed: () {
            // Implement delete functionality
          },
        ),
      ),
    );
  }
}
