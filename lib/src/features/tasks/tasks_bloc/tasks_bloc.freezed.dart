// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tasks_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TasksEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskCategory? category, TaskStatus? status)
        fetchAllTasks,
    required TResult Function(String id) toggleSelected,
    required TResult Function(String id) removeTask,
    required TResult Function(Task task) addTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TaskCategory? category, TaskStatus? status)?
        fetchAllTasks,
    TResult? Function(String id)? toggleSelected,
    TResult? Function(String id)? removeTask,
    TResult? Function(Task task)? addTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskCategory? category, TaskStatus? status)? fetchAllTasks,
    TResult Function(String id)? toggleSelected,
    TResult Function(String id)? removeTask,
    TResult Function(Task task)? addTask,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAllTasks value) fetchAllTasks,
    required TResult Function(_ToggleSelected value) toggleSelected,
    required TResult Function(_RemoveTask value) removeTask,
    required TResult Function(_AddTask value) addTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchAllTasks value)? fetchAllTasks,
    TResult? Function(_ToggleSelected value)? toggleSelected,
    TResult? Function(_RemoveTask value)? removeTask,
    TResult? Function(_AddTask value)? addTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAllTasks value)? fetchAllTasks,
    TResult Function(_ToggleSelected value)? toggleSelected,
    TResult Function(_RemoveTask value)? removeTask,
    TResult Function(_AddTask value)? addTask,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksEventCopyWith<$Res> {
  factory $TasksEventCopyWith(
          TasksEvent value, $Res Function(TasksEvent) then) =
      _$TasksEventCopyWithImpl<$Res, TasksEvent>;
}

/// @nodoc
class _$TasksEventCopyWithImpl<$Res, $Val extends TasksEvent>
    implements $TasksEventCopyWith<$Res> {
  _$TasksEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchAllTasksImplCopyWith<$Res> {
  factory _$$FetchAllTasksImplCopyWith(
          _$FetchAllTasksImpl value, $Res Function(_$FetchAllTasksImpl) then) =
      __$$FetchAllTasksImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TaskCategory? category, TaskStatus? status});
}

/// @nodoc
class __$$FetchAllTasksImplCopyWithImpl<$Res>
    extends _$TasksEventCopyWithImpl<$Res, _$FetchAllTasksImpl>
    implements _$$FetchAllTasksImplCopyWith<$Res> {
  __$$FetchAllTasksImplCopyWithImpl(
      _$FetchAllTasksImpl _value, $Res Function(_$FetchAllTasksImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = freezed,
    Object? status = freezed,
  }) {
    return _then(_$FetchAllTasksImpl(
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as TaskCategory?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TaskStatus?,
    ));
  }
}

/// @nodoc

class _$FetchAllTasksImpl implements _FetchAllTasks {
  const _$FetchAllTasksImpl({this.category, this.status});

  @override
  final TaskCategory? category;
  @override
  final TaskStatus? status;

  @override
  String toString() {
    return 'TasksEvent.fetchAllTasks(category: $category, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchAllTasksImpl &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchAllTasksImplCopyWith<_$FetchAllTasksImpl> get copyWith =>
      __$$FetchAllTasksImplCopyWithImpl<_$FetchAllTasksImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskCategory? category, TaskStatus? status)
        fetchAllTasks,
    required TResult Function(String id) toggleSelected,
    required TResult Function(String id) removeTask,
    required TResult Function(Task task) addTask,
  }) {
    return fetchAllTasks(category, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TaskCategory? category, TaskStatus? status)?
        fetchAllTasks,
    TResult? Function(String id)? toggleSelected,
    TResult? Function(String id)? removeTask,
    TResult? Function(Task task)? addTask,
  }) {
    return fetchAllTasks?.call(category, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskCategory? category, TaskStatus? status)? fetchAllTasks,
    TResult Function(String id)? toggleSelected,
    TResult Function(String id)? removeTask,
    TResult Function(Task task)? addTask,
    required TResult orElse(),
  }) {
    if (fetchAllTasks != null) {
      return fetchAllTasks(category, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAllTasks value) fetchAllTasks,
    required TResult Function(_ToggleSelected value) toggleSelected,
    required TResult Function(_RemoveTask value) removeTask,
    required TResult Function(_AddTask value) addTask,
  }) {
    return fetchAllTasks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchAllTasks value)? fetchAllTasks,
    TResult? Function(_ToggleSelected value)? toggleSelected,
    TResult? Function(_RemoveTask value)? removeTask,
    TResult? Function(_AddTask value)? addTask,
  }) {
    return fetchAllTasks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAllTasks value)? fetchAllTasks,
    TResult Function(_ToggleSelected value)? toggleSelected,
    TResult Function(_RemoveTask value)? removeTask,
    TResult Function(_AddTask value)? addTask,
    required TResult orElse(),
  }) {
    if (fetchAllTasks != null) {
      return fetchAllTasks(this);
    }
    return orElse();
  }
}

abstract class _FetchAllTasks implements TasksEvent {
  const factory _FetchAllTasks(
      {final TaskCategory? category,
      final TaskStatus? status}) = _$FetchAllTasksImpl;

  TaskCategory? get category;
  TaskStatus? get status;
  @JsonKey(ignore: true)
  _$$FetchAllTasksImplCopyWith<_$FetchAllTasksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToggleSelectedImplCopyWith<$Res> {
  factory _$$ToggleSelectedImplCopyWith(_$ToggleSelectedImpl value,
          $Res Function(_$ToggleSelectedImpl) then) =
      __$$ToggleSelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$ToggleSelectedImplCopyWithImpl<$Res>
    extends _$TasksEventCopyWithImpl<$Res, _$ToggleSelectedImpl>
    implements _$$ToggleSelectedImplCopyWith<$Res> {
  __$$ToggleSelectedImplCopyWithImpl(
      _$ToggleSelectedImpl _value, $Res Function(_$ToggleSelectedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$ToggleSelectedImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ToggleSelectedImpl implements _ToggleSelected {
  const _$ToggleSelectedImpl({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'TasksEvent.toggleSelected(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleSelectedImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleSelectedImplCopyWith<_$ToggleSelectedImpl> get copyWith =>
      __$$ToggleSelectedImplCopyWithImpl<_$ToggleSelectedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskCategory? category, TaskStatus? status)
        fetchAllTasks,
    required TResult Function(String id) toggleSelected,
    required TResult Function(String id) removeTask,
    required TResult Function(Task task) addTask,
  }) {
    return toggleSelected(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TaskCategory? category, TaskStatus? status)?
        fetchAllTasks,
    TResult? Function(String id)? toggleSelected,
    TResult? Function(String id)? removeTask,
    TResult? Function(Task task)? addTask,
  }) {
    return toggleSelected?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskCategory? category, TaskStatus? status)? fetchAllTasks,
    TResult Function(String id)? toggleSelected,
    TResult Function(String id)? removeTask,
    TResult Function(Task task)? addTask,
    required TResult orElse(),
  }) {
    if (toggleSelected != null) {
      return toggleSelected(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAllTasks value) fetchAllTasks,
    required TResult Function(_ToggleSelected value) toggleSelected,
    required TResult Function(_RemoveTask value) removeTask,
    required TResult Function(_AddTask value) addTask,
  }) {
    return toggleSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchAllTasks value)? fetchAllTasks,
    TResult? Function(_ToggleSelected value)? toggleSelected,
    TResult? Function(_RemoveTask value)? removeTask,
    TResult? Function(_AddTask value)? addTask,
  }) {
    return toggleSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAllTasks value)? fetchAllTasks,
    TResult Function(_ToggleSelected value)? toggleSelected,
    TResult Function(_RemoveTask value)? removeTask,
    TResult Function(_AddTask value)? addTask,
    required TResult orElse(),
  }) {
    if (toggleSelected != null) {
      return toggleSelected(this);
    }
    return orElse();
  }
}

abstract class _ToggleSelected implements TasksEvent {
  const factory _ToggleSelected({required final String id}) =
      _$ToggleSelectedImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$ToggleSelectedImplCopyWith<_$ToggleSelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveTaskImplCopyWith<$Res> {
  factory _$$RemoveTaskImplCopyWith(
          _$RemoveTaskImpl value, $Res Function(_$RemoveTaskImpl) then) =
      __$$RemoveTaskImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$RemoveTaskImplCopyWithImpl<$Res>
    extends _$TasksEventCopyWithImpl<$Res, _$RemoveTaskImpl>
    implements _$$RemoveTaskImplCopyWith<$Res> {
  __$$RemoveTaskImplCopyWithImpl(
      _$RemoveTaskImpl _value, $Res Function(_$RemoveTaskImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$RemoveTaskImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RemoveTaskImpl implements _RemoveTask {
  const _$RemoveTaskImpl({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'TasksEvent.removeTask(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveTaskImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveTaskImplCopyWith<_$RemoveTaskImpl> get copyWith =>
      __$$RemoveTaskImplCopyWithImpl<_$RemoveTaskImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskCategory? category, TaskStatus? status)
        fetchAllTasks,
    required TResult Function(String id) toggleSelected,
    required TResult Function(String id) removeTask,
    required TResult Function(Task task) addTask,
  }) {
    return removeTask(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TaskCategory? category, TaskStatus? status)?
        fetchAllTasks,
    TResult? Function(String id)? toggleSelected,
    TResult? Function(String id)? removeTask,
    TResult? Function(Task task)? addTask,
  }) {
    return removeTask?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskCategory? category, TaskStatus? status)? fetchAllTasks,
    TResult Function(String id)? toggleSelected,
    TResult Function(String id)? removeTask,
    TResult Function(Task task)? addTask,
    required TResult orElse(),
  }) {
    if (removeTask != null) {
      return removeTask(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAllTasks value) fetchAllTasks,
    required TResult Function(_ToggleSelected value) toggleSelected,
    required TResult Function(_RemoveTask value) removeTask,
    required TResult Function(_AddTask value) addTask,
  }) {
    return removeTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchAllTasks value)? fetchAllTasks,
    TResult? Function(_ToggleSelected value)? toggleSelected,
    TResult? Function(_RemoveTask value)? removeTask,
    TResult? Function(_AddTask value)? addTask,
  }) {
    return removeTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAllTasks value)? fetchAllTasks,
    TResult Function(_ToggleSelected value)? toggleSelected,
    TResult Function(_RemoveTask value)? removeTask,
    TResult Function(_AddTask value)? addTask,
    required TResult orElse(),
  }) {
    if (removeTask != null) {
      return removeTask(this);
    }
    return orElse();
  }
}

abstract class _RemoveTask implements TasksEvent {
  const factory _RemoveTask({required final String id}) = _$RemoveTaskImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$RemoveTaskImplCopyWith<_$RemoveTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddTaskImplCopyWith<$Res> {
  factory _$$AddTaskImplCopyWith(
          _$AddTaskImpl value, $Res Function(_$AddTaskImpl) then) =
      __$$AddTaskImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Task task});
}

/// @nodoc
class __$$AddTaskImplCopyWithImpl<$Res>
    extends _$TasksEventCopyWithImpl<$Res, _$AddTaskImpl>
    implements _$$AddTaskImplCopyWith<$Res> {
  __$$AddTaskImplCopyWithImpl(
      _$AddTaskImpl _value, $Res Function(_$AddTaskImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$AddTaskImpl(
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
    ));
  }
}

/// @nodoc

class _$AddTaskImpl implements _AddTask {
  const _$AddTaskImpl({required this.task});

  @override
  final Task task;

  @override
  String toString() {
    return 'TasksEvent.addTask(task: $task)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTaskImpl &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTaskImplCopyWith<_$AddTaskImpl> get copyWith =>
      __$$AddTaskImplCopyWithImpl<_$AddTaskImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskCategory? category, TaskStatus? status)
        fetchAllTasks,
    required TResult Function(String id) toggleSelected,
    required TResult Function(String id) removeTask,
    required TResult Function(Task task) addTask,
  }) {
    return addTask(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TaskCategory? category, TaskStatus? status)?
        fetchAllTasks,
    TResult? Function(String id)? toggleSelected,
    TResult? Function(String id)? removeTask,
    TResult? Function(Task task)? addTask,
  }) {
    return addTask?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskCategory? category, TaskStatus? status)? fetchAllTasks,
    TResult Function(String id)? toggleSelected,
    TResult Function(String id)? removeTask,
    TResult Function(Task task)? addTask,
    required TResult orElse(),
  }) {
    if (addTask != null) {
      return addTask(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAllTasks value) fetchAllTasks,
    required TResult Function(_ToggleSelected value) toggleSelected,
    required TResult Function(_RemoveTask value) removeTask,
    required TResult Function(_AddTask value) addTask,
  }) {
    return addTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchAllTasks value)? fetchAllTasks,
    TResult? Function(_ToggleSelected value)? toggleSelected,
    TResult? Function(_RemoveTask value)? removeTask,
    TResult? Function(_AddTask value)? addTask,
  }) {
    return addTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAllTasks value)? fetchAllTasks,
    TResult Function(_ToggleSelected value)? toggleSelected,
    TResult Function(_RemoveTask value)? removeTask,
    TResult Function(_AddTask value)? addTask,
    required TResult orElse(),
  }) {
    if (addTask != null) {
      return addTask(this);
    }
    return orElse();
  }
}

abstract class _AddTask implements TasksEvent {
  const factory _AddTask({required final Task task}) = _$AddTaskImpl;

  Task get task;
  @JsonKey(ignore: true)
  _$$AddTaskImplCopyWith<_$AddTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TasksState {
  LoadingState get loadingState => throw _privateConstructorUsedError;
  List<Task>? get tasksList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TasksStateCopyWith<TasksState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksStateCopyWith<$Res> {
  factory $TasksStateCopyWith(
          TasksState value, $Res Function(TasksState) then) =
      _$TasksStateCopyWithImpl<$Res, TasksState>;
  @useResult
  $Res call({LoadingState loadingState, List<Task>? tasksList});
}

/// @nodoc
class _$TasksStateCopyWithImpl<$Res, $Val extends TasksState>
    implements $TasksStateCopyWith<$Res> {
  _$TasksStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadingState = null,
    Object? tasksList = freezed,
  }) {
    return _then(_value.copyWith(
      loadingState: null == loadingState
          ? _value.loadingState
          : loadingState // ignore: cast_nullable_to_non_nullable
              as LoadingState,
      tasksList: freezed == tasksList
          ? _value.tasksList
          : tasksList // ignore: cast_nullable_to_non_nullable
              as List<Task>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StateImplCopyWith<$Res> implements $TasksStateCopyWith<$Res> {
  factory _$$StateImplCopyWith(
          _$StateImpl value, $Res Function(_$StateImpl) then) =
      __$$StateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LoadingState loadingState, List<Task>? tasksList});
}

/// @nodoc
class __$$StateImplCopyWithImpl<$Res>
    extends _$TasksStateCopyWithImpl<$Res, _$StateImpl>
    implements _$$StateImplCopyWith<$Res> {
  __$$StateImplCopyWithImpl(
      _$StateImpl _value, $Res Function(_$StateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadingState = null,
    Object? tasksList = freezed,
  }) {
    return _then(_$StateImpl(
      loadingState: null == loadingState
          ? _value.loadingState
          : loadingState // ignore: cast_nullable_to_non_nullable
              as LoadingState,
      tasksList: freezed == tasksList
          ? _value._tasksList
          : tasksList // ignore: cast_nullable_to_non_nullable
              as List<Task>?,
    ));
  }
}

/// @nodoc

class _$StateImpl implements _State {
  const _$StateImpl(
      {this.loadingState = LoadingState.normal, final List<Task>? tasksList})
      : _tasksList = tasksList;

  @override
  @JsonKey()
  final LoadingState loadingState;
  final List<Task>? _tasksList;
  @override
  List<Task>? get tasksList {
    final value = _tasksList;
    if (value == null) return null;
    if (_tasksList is EqualUnmodifiableListView) return _tasksList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TasksState(loadingState: $loadingState, tasksList: $tasksList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StateImpl &&
            (identical(other.loadingState, loadingState) ||
                other.loadingState == loadingState) &&
            const DeepCollectionEquality()
                .equals(other._tasksList, _tasksList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loadingState,
      const DeepCollectionEquality().hash(_tasksList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StateImplCopyWith<_$StateImpl> get copyWith =>
      __$$StateImplCopyWithImpl<_$StateImpl>(this, _$identity);
}

abstract class _State implements TasksState {
  const factory _State(
      {final LoadingState loadingState,
      final List<Task>? tasksList}) = _$StateImpl;

  @override
  LoadingState get loadingState;
  @override
  List<Task>? get tasksList;
  @override
  @JsonKey(ignore: true)
  _$$StateImplCopyWith<_$StateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
