import 'package:hive_flutter/hive_flutter.dart';
import 'package:roster_co/db/models/sub_task_model.dart';

@HiveType(typeId: 2)
class CreateTaskModel {
  @HiveField(0)
  int? idTask;

  @HiveField(1)
  final String title;

  @HiveField(2)
  final String date;

  @HiveField(3)
  final String priority;

  @HiveField(4)
  final String description;

  @HiveField(5)
  final String time;

  @HiveField(6)
  final int snooze;

  @HiveField(7)
  final SubTaskModel subTask;

  @HiveField(8)
  final String category;

  CreateTaskModel({
    this.idTask,
    required this.title,
    required this.date,
    required this.priority,
    required this.description,
    required this.time,
    required this.snooze,
    required this.subTask,
    required this.category,
  });
}
