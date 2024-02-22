import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather_test/src/enums/task_category.dart';
import 'package:flutter_weather_test/src/enums/task_status.dart';
import 'package:flutter_weather_test/src/features/tasks/filters_bloc/filters_bloc.dart';

class Filters extends StatefulWidget {
  const Filters({super.key});

  @override
  State<Filters> createState() => _FiltersState();
}

class _FiltersState extends State<Filters> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FiltersBloc, FiltersState>(
      builder: (context, state) {
        return Row(
          children: [
            const Text('Category: '),
            DropdownButton<TaskCategory>(
              value: state.category,
              onChanged: (newValue) => _onSelectCategory(newValue!),
              items: TaskCategory.values.map((TaskCategory value) {
                return DropdownMenuItem(
                  value: value,
                  child: Text(value.toString().split('.').last),
                );
              }).toList(),
            ),
            const Text('Status: '),
            DropdownButton(
              value: state.status,
              onChanged: (newValue) => _onSelectStatus(newValue!),
              items: TaskStatus.values.map((TaskStatus value) {
                return DropdownMenuItem(
                  value: value,
                  child: Text(value.toString().split('.').last),
                );
              }).toList(),
            ),
          ],
        );
      },
    );
  }

  void _onSelectStatus(TaskStatus status) {
    context
        .read<FiltersBloc>()
        .add(FiltersEvent.filterStatusSelected(status: status));
  }

  void _onSelectCategory(TaskCategory category) {
    context
        .read<FiltersBloc>()
        .add(FiltersEvent.filterCategorySelected(category: category));
  }
}
