import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather_test/src/enums/loading_state.dart';
import 'package:flutter_weather_test/src/features/tasks/tasks_bloc/tasks_bloc.dart';

class TasksList extends StatefulWidget {
  const TasksList({super.key});

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TasksBloc, TasksState>(
      builder: (context, state) {
        if (state.loadingState.isLoading) {
          return const Center(child: CircularProgressIndicator());
        }
        return state.tasksList == null || state.tasksList!.isEmpty
            ? const Text('Empty')
            : ListView.builder(
                itemCount: state.tasksList!.length,
                itemBuilder: (context, index) {
                  final task = state.tasksList![index];
                  return Dismissible(
                    key: UniqueKey(),
                    background: const Icon(
                      Icons.delete,
                    ),
                    confirmDismiss: (direction) => _onConfirm(),
                    onDismissed: (direction) => _onRemoveTask(task.id),
                    child: ListTile(
                      title: Text(task.title),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(task.description),
                          const SizedBox(
                            height: 4.0,
                          ),
                          Row(
                            children: [
                              const Text('Category: '),
                              const SizedBox(
                                width: 4.0,
                              ),
                              Text(task.category.name),
                            ],
                          )
                        ],
                      ),
                      trailing: Checkbox(
                        value: task.isCompleted,
                        onChanged: (value) =>
                            _onToggleCheckbox(task.id, value!),
                      ),
                    ),
                  );
                },
              );
      },
    );
  }

  void _onRemoveTask(String id) {
    context.read<TasksBloc>().add(TasksEvent.removeTask(id: id));
  }

  void _onToggleCheckbox(String id, bool value) {
    context.read<TasksBloc>().add(TasksEvent.toggleSelected(id: id));
  }

  Future<bool> _onConfirm() async {
    return await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Confirm"),
          content: const Text("Are you sure you want to delete this item?"),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: const Text("CANCEL"),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: const Text("DELETE"),
            ),
          ],
        );
      },
    );
  }
}
