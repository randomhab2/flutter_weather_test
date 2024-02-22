import 'package:flutter/material.dart';
import 'package:flutter_weather_test/src/enums/task_category.dart';
import 'package:flutter_weather_test/src/features/weather/weather_screen.dart';
import 'package:uuid/uuid.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather_test/src/features/tasks/tasks_bloc/tasks_bloc.dart';
import 'package:flutter_weather_test/src/features/tasks/tasks_list.dart';
import 'package:flutter_weather_test/src/features/tasks/widgets/filters.dart';
import 'package:flutter_weather_test/src/features/tasks/widgets/task_dialog.dart';
import 'package:flutter_weather_test/src/models/task.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task List'),
      ),
      body: Column(
        children: [
          const Filters(),
          const Expanded(
            child: TasksList(),
          ),
          const Spacer(),
          SafeArea(
            child: ElevatedButton(
              onPressed: () => _onNavigate(context),
              child: const Text('Weather screen'),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showAddTaskDialog(context);
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  void _onNavigate(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const WeatherScreen()),
    );
  }

  void _onAddTask(
    String title,
    String description,
    TaskCategory category,
    BuildContext context,
  ) {
    final task = Task(
      id: const Uuid().v4(),
      title: title,
      description: description,
      category: category,
    );

    context.read<TasksBloc>().add(TasksEvent.addTask(task: task));
  }

  void _showAddTaskDialog(BuildContext builderContext) {
    addTaskDialog(
      builderContext,
      onAddTask: _onAddTask,
    );
  }
}
