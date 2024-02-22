import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather_test/src/constants/boxes.dart';
import 'package:flutter_weather_test/src/enums/loading_state.dart';
import 'package:flutter_weather_test/src/enums/task_category.dart';
import 'package:flutter_weather_test/src/enums/task_status.dart';
import 'package:flutter_weather_test/src/features/tasks/filters_bloc/filters_bloc.dart';
import 'package:flutter_weather_test/src/models/task.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tasks_event.dart';
part 'tasks_state.dart';
part 'tasks_bloc.freezed.dart';

class TasksBloc extends Bloc<TasksEvent, TasksState> {
  TasksBloc(this._filtersBloc) : super(const TasksState()) {
    on<_FetchAllTasks>(_onFetchAll);
    on<_ToggleSelected>(_onToggleCheckbox);
    on<_RemoveTask>(_onRemoveTask);
    on<_AddTask>(_onAddTask);

    /// If filters changed - sort tasks list
    _filtersBloc.stream.listen((state) {
      add(
        TasksEvent.fetchAllTasks(
          category: _filtersBloc.state.category,
          status: _filtersBloc.state.status,
        ),
      );
    });
  }

  final FiltersBloc _filtersBloc;

  void _onFetchAll(_FetchAllTasks event, Emitter<TasksState> emit) async {
    final newTasksList = _getTasksList(
      category: event.category,
      status: event.status,
    );

    emit(
      state.copyWith(
        loadingState: LoadingState.success,
        tasksList: newTasksList,
      ),
    );
  }

  void _onToggleCheckbox(
    _ToggleSelected event,
    Emitter<TasksState> emit,
  ) async {
    /// Find the task with the given id
    final Task? task = tasksBox.get(event.id);

    if (task != null) {
      /// Update instance of Task with the updated isCompleted value
      final updatedTask = task.copyWith(isCompleted: !task.isCompleted);

      /// Save the updated task back to the Hive box
      await tasksBox.put(event.id, updatedTask);

      /// Retrieve the updated tasks list from the Hive box with event
      add(
        TasksEvent.fetchAllTasks(
          category: _filtersBloc.state.category,
          status: _filtersBloc.state.status,
        ),
      );
    }
  }

  void _onRemoveTask(
    _RemoveTask event,
    Emitter<TasksState> emit,
  ) async {
    await tasksBox.delete(event.id);

    /// Retrieve the updated tasks list from the Hive box with event
    add(
      TasksEvent.fetchAllTasks(
        category: _filtersBloc.state.category,
        status: _filtersBloc.state.status,
      ),
    );
  }

  void _onAddTask(
    _AddTask event,
    Emitter<TasksState> emit,
  ) async {
    await tasksBox.put(event.task.id, event.task);

    /// Retrieve the updated tasks list from the Hive box with event
    add(
      TasksEvent.fetchAllTasks(
        category: _filtersBloc.state.category,
        status: _filtersBloc.state.status,
      ),
    );
  }

  List<Task> _getTasksList({
    required TaskCategory? category,
    required TaskStatus? status,
  }) {
    final tasksList = tasksBox.values.toList() as List<Task>;

    if (category == null && status == null) {
      return tasksList;
    }

    final filteredByCategory = _onFilterByCategory(tasksList, category);

    final filteredList = _onFilterByStatus(filteredByCategory, status);

    return filteredList;
  }

  List<Task> _onFilterByCategory(List<Task> tasksList, TaskCategory? category) {
    if (category == TaskCategory.all) {
      return tasksList;
    }

    return tasksList.where((element) => element.category == category).toList();
  }

  List<Task> _onFilterByStatus(List<Task> tasksList, TaskStatus? status) {
    if (status == TaskStatus.done) {
      return tasksList.where((element) => element.isCompleted).toList();
    }
    if (status == TaskStatus.notDone) {
      return tasksList.where((element) => !element.isCompleted).toList();
    }

    return tasksList;
  }
}
