import 'package:flutter/material.dart';
import 'package:flutter_weather_test/src/enums/task_category.dart';

Future<void> addTaskDialog(
  BuildContext context, {
  required Function onAddTask,
}) async {
  String title = '';
  String description = '';
  TaskCategory selectedTaskCategory = TaskCategory.home;

  final taskValues =
      TaskCategory.values.where((category) => category != TaskCategory.all);

  await showDialog(
    context: context,
    builder: (_) => AlertDialog(
      title: const Text('Add Task'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            decoration: const InputDecoration(labelText: 'Title'),
            onChanged: (value) {
              title = value;
            },
          ),
          TextField(
            decoration: const InputDecoration(labelText: 'Description'),
            onChanged: (value) {
              description = value;
            },
          ),
          DropdownButtonFormField<TaskCategory>(
            value: selectedTaskCategory,
            items: taskValues.map((TaskCategory taskCategory) {
              return DropdownMenuItem<TaskCategory>(
                value: taskCategory,
                child: Text(taskCategory.toString().split('.').last),
              );
            }).toList(),
            onChanged: (TaskCategory? value) {
              if (value != null) {
                selectedTaskCategory = value;
              }
            },
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            if (title.isNotEmpty && description.isNotEmpty) {
              onAddTask(
                title,
                description,
                selectedTaskCategory,
                context,
              );
              Navigator.pop(context);
            }
          },
          child: const Text('Add'),
        ),
      ],
    ),
  );
}
