// task_detail_screen.dart
import 'package:flutter/material.dart';
import 'package:your_app_name/models/task.dart';

class TaskDetailScreen extends StatelessWidget {
  final Task task;

  TaskDetailScreen({required this.task});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(task.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Description:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text(task.description, style: TextStyle(fontSize: 16)),
            SizedBox(height: 16),
            Text('Due Date:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text(task.dueDate.toString(), style: TextStyle(fontSize: 16)),
            // Implement notes and file attachment UI
          ],
        ),
      ),
    );
  }
}
