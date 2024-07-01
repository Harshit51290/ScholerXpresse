// task_provider.dart
import 'package:flutter/material.dart';
import 'package:your_app_name/services/task_service.dart';
import 'package:your_app_name/models/task.dart';

class TaskProvider with ChangeNotifier {
  final TaskService _taskService = TaskService();
  List<Task> _tasks = [];

  List<Task> get tasks => _tasks;

  Future<void> addTask(Task task) async {
    await _taskService.addTask(task);
    _tasks.add(task);
    notifyListeners();
  }

  Future<void> editTask(Task task) async {
    await _taskService.editTask(task);
    int index = _tasks.indexWhere((t) => t.id == task.id);
    if (index != -1) {
      _tasks[index] = task;
      notifyListeners();
    }
  }

  Future<void> deleteTask(String id) async {
    await _taskService.deleteTask(id);
    _tasks.removeWhere((task) => task.id == id);
    notifyListeners();
  }
}
