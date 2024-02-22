part of 'tasks_bloc.dart';

@freezed
class TasksEvent with _$TasksEvent {
  const factory TasksEvent.fetchAllTasks({
    TaskCategory? category,
    TaskStatus? status,
  }) = _FetchAllTasks;

  const factory TasksEvent.toggleSelected({
    required String id,
  }) = _ToggleSelected;

  const factory TasksEvent.removeTask({
    required String id,
  }) = _RemoveTask;
  const factory TasksEvent.addTask({
    required Task task,
  }) = _AddTask;
}
