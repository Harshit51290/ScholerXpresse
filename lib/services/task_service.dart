// task_service.dart
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:your_app_name/models/task.dart';

class TaskService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> addTask(Task task) async {
    await _firestore.collection('tasks').doc(task.id).set({
      'title': task.title,
      'description': task.description,
      'dueDate': task.dueDate,
      'priority': task.priority,
      'category': task.category,
      'isRecurring': task.isRecurring,
      'isCompleted': task.isCompleted,
    });
  }

  Future<void> editTask(Task task) async {
    await _firestore.collection('tasks').doc(task.id).update({
      'title': task.title,
      'description': task.description,
      'dueDate': task.dueDate,
      'priority': task.priority,
      'category': task.category,
      'isRecurring': task.isRecurring,
      'isCompleted': task.isCompleted,
    });
  }

  Future<void> deleteTask(String id) async {
    await _firestore.collection('tasks').doc(id).delete();
  }
}
