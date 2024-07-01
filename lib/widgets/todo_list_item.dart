// todo_list_item.dart
import 'package:flutter/material.dart';
import 'package:your_app_name/models/todo_list.dart';

class TodoListItem extends StatelessWidget {
  final TodoList todoList;

  TodoListItem({required this.todoList});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(todoList.title),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: todoList.items.map((item) => Text(item)).toList(),
        ),
      ),
    );
  }
}
