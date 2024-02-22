import 'package:hive_flutter/hive_flutter.dart';

part 'task_category.g.dart';

@HiveType(typeId: 2)
enum TaskCategory {
  @HiveField(0)
  all,
  @HiveField(1)
  home,
  @HiveField(2)
  work,
}
