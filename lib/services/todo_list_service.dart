// todo_list_service.dart
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:your_app_name/models/todo_list.dart';

class TodoListService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> addTodoList(TodoList todoList) async {
    await _firestore.collection('todo_lists').doc(todoList.id).set({
      'title': todoList.title,
      'items': todoList.items,
    });
  }

  Future<void> editTodoList(TodoList todoList) async {
    await _firestore.collection('todo_lists').doc(todoList.id).update({
      'title': todoList.title,
      'items': todoList.items,
    });
  }

  Future<void> deleteTodoList(String id) async {
    await _firestore.collection('todo_lists').doc(id).delete();
  }
}
