part of 'tasks_bloc.dart';

@freezed
class TasksState with _$TasksState {
  const factory TasksState({
    @Default(LoadingState.normal) LoadingState loadingState,
    List<Task>? tasksList,
  }) = _State;
}
