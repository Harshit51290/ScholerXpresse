// task.dart
class Task {
  String id;
  String title;
  String description;
  DateTime dueDate;
  String priority;
  String category;
  bool isRecurring;
  bool isCompleted;

  Task({
    required this.id,
    required this.title,
    required this.description,
    required this.dueDate,
    required this.priority,
    required this.category,
    this.isRecurring = false,
    this.isCompleted = false,
  });
}
