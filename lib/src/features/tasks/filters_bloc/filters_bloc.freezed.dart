// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filters_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FiltersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskStatus status) filterStatusSelected,
    required TResult Function(TaskCategory category) filterCategorySelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TaskStatus status)? filterStatusSelected,
    TResult? Function(TaskCategory category)? filterCategorySelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskStatus status)? filterStatusSelected,
    TResult Function(TaskCategory category)? filterCategorySelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FilterStatusSelected value) filterStatusSelected,
    required TResult Function(_FilterCategorySelected value)
        filterCategorySelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FilterStatusSelected value)? filterStatusSelected,
    TResult? Function(_FilterCategorySelected value)? filterCategorySelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FilterStatusSelected value)? filterStatusSelected,
    TResult Function(_FilterCategorySelected value)? filterCategorySelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FiltersEventCopyWith<$Res> {
  factory $FiltersEventCopyWith(
          FiltersEvent value, $Res Function(FiltersEvent) then) =
      _$FiltersEventCopyWithImpl<$Res, FiltersEvent>;
}

/// @nodoc
class _$FiltersEventCopyWithImpl<$Res, $Val extends FiltersEvent>
    implements $FiltersEventCopyWith<$Res> {
  _$FiltersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FilterStatusSelectedImplCopyWith<$Res> {
  factory _$$FilterStatusSelectedImplCopyWith(_$FilterStatusSelectedImpl value,
          $Res Function(_$FilterStatusSelectedImpl) then) =
      __$$FilterStatusSelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TaskStatus status});
}

/// @nodoc
class __$$FilterStatusSelectedImplCopyWithImpl<$Res>
    extends _$FiltersEventCopyWithImpl<$Res, _$FilterStatusSelectedImpl>
    implements _$$FilterStatusSelectedImplCopyWith<$Res> {
  __$$FilterStatusSelectedImplCopyWithImpl(_$FilterStatusSelectedImpl _value,
      $Res Function(_$FilterStatusSelectedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$FilterStatusSelectedImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TaskStatus,
    ));
  }
}

/// @nodoc

class _$FilterStatusSelectedImpl
    with DiagnosticableTreeMixin
    implements _FilterStatusSelected {
  const _$FilterStatusSelectedImpl({required this.status});

  @override
  final TaskStatus status;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FiltersEvent.filterStatusSelected(status: $status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FiltersEvent.filterStatusSelected'))
      ..add(DiagnosticsProperty('status', status));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterStatusSelectedImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterStatusSelectedImplCopyWith<_$FilterStatusSelectedImpl>
      get copyWith =>
          __$$FilterStatusSelectedImplCopyWithImpl<_$FilterStatusSelectedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskStatus status) filterStatusSelected,
    required TResult Function(TaskCategory category) filterCategorySelected,
  }) {
    return filterStatusSelected(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TaskStatus status)? filterStatusSelected,
    TResult? Function(TaskCategory category)? filterCategorySelected,
  }) {
    return filterStatusSelected?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskStatus status)? filterStatusSelected,
    TResult Function(TaskCategory category)? filterCategorySelected,
    required TResult orElse(),
  }) {
    if (filterStatusSelected != null) {
      return filterStatusSelected(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FilterStatusSelected value) filterStatusSelected,
    required TResult Function(_FilterCategorySelected value)
        filterCategorySelected,
  }) {
    return filterStatusSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FilterStatusSelected value)? filterStatusSelected,
    TResult? Function(_FilterCategorySelected value)? filterCategorySelected,
  }) {
    return filterStatusSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FilterStatusSelected value)? filterStatusSelected,
    TResult Function(_FilterCategorySelected value)? filterCategorySelected,
    required TResult orElse(),
  }) {
    if (filterStatusSelected != null) {
      return filterStatusSelected(this);
    }
    return orElse();
  }
}

abstract class _FilterStatusSelected implements FiltersEvent {
  const factory _FilterStatusSelected({required final TaskStatus status}) =
      _$FilterStatusSelectedImpl;

  TaskStatus get status;
  @JsonKey(ignore: true)
  _$$FilterStatusSelectedImplCopyWith<_$FilterStatusSelectedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilterCategorySelectedImplCopyWith<$Res> {
  factory _$$FilterCategorySelectedImplCopyWith(
          _$FilterCategorySelectedImpl value,
          $Res Function(_$FilterCategorySelectedImpl) then) =
      __$$FilterCategorySelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TaskCategory category});
}

/// @nodoc
class __$$FilterCategorySelectedImplCopyWithImpl<$Res>
    extends _$FiltersEventCopyWithImpl<$Res, _$FilterCategorySelectedImpl>
    implements _$$FilterCategorySelectedImplCopyWith<$Res> {
  __$$FilterCategorySelectedImplCopyWithImpl(
      _$FilterCategorySelectedImpl _value,
      $Res Function(_$FilterCategorySelectedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$FilterCategorySelectedImpl(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as TaskCategory,
    ));
  }
}

/// @nodoc

class _$FilterCategorySelectedImpl
    with DiagnosticableTreeMixin
    implements _FilterCategorySelected {
  const _$FilterCategorySelectedImpl({required this.category});

  @override
  final TaskCategory category;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FiltersEvent.filterCategorySelected(category: $category)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FiltersEvent.filterCategorySelected'))
      ..add(DiagnosticsProperty('category', category));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterCategorySelectedImpl &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterCategorySelectedImplCopyWith<_$FilterCategorySelectedImpl>
      get copyWith => __$$FilterCategorySelectedImplCopyWithImpl<
          _$FilterCategorySelectedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskStatus status) filterStatusSelected,
    required TResult Function(TaskCategory category) filterCategorySelected,
  }) {
    return filterCategorySelected(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TaskStatus status)? filterStatusSelected,
    TResult? Function(TaskCategory category)? filterCategorySelected,
  }) {
    return filterCategorySelected?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskStatus status)? filterStatusSelected,
    TResult Function(TaskCategory category)? filterCategorySelected,
    required TResult orElse(),
  }) {
    if (filterCategorySelected != null) {
      return filterCategorySelected(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FilterStatusSelected value) filterStatusSelected,
    required TResult Function(_FilterCategorySelected value)
        filterCategorySelected,
  }) {
    return filterCategorySelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FilterStatusSelected value)? filterStatusSelected,
    TResult? Function(_FilterCategorySelected value)? filterCategorySelected,
  }) {
    return filterCategorySelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FilterStatusSelected value)? filterStatusSelected,
    TResult Function(_FilterCategorySelected value)? filterCategorySelected,
    required TResult orElse(),
  }) {
    if (filterCategorySelected != null) {
      return filterCategorySelected(this);
    }
    return orElse();
  }
}

abstract class _FilterCategorySelected implements FiltersEvent {
  const factory _FilterCategorySelected(
      {required final TaskCategory category}) = _$FilterCategorySelectedImpl;

  TaskCategory get category;
  @JsonKey(ignore: true)
  _$$FilterCategorySelectedImplCopyWith<_$FilterCategorySelectedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FiltersState {
  TaskCategory? get category => throw _privateConstructorUsedError;
  TaskStatus? get status => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskCategory? category, TaskStatus? status)
        filtersLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TaskCategory? category, TaskStatus? status)?
        filtersLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskCategory? category, TaskStatus? status)? filtersLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) filtersLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? filtersLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? filtersLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FiltersStateCopyWith<FiltersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FiltersStateCopyWith<$Res> {
  factory $FiltersStateCopyWith(
          FiltersState value, $Res Function(FiltersState) then) =
      _$FiltersStateCopyWithImpl<$Res, FiltersState>;
  @useResult
  $Res call({TaskCategory? category, TaskStatus? status});
}

/// @nodoc
class _$FiltersStateCopyWithImpl<$Res, $Val extends FiltersState>
    implements $FiltersStateCopyWith<$Res> {
  _$FiltersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as TaskCategory?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TaskStatus?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res>
    implements $FiltersStateCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TaskCategory? category, TaskStatus? status});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$FiltersStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = freezed,
    Object? status = freezed,
  }) {
    return _then(_$LoadedImpl(
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

class _$LoadedImpl with DiagnosticableTreeMixin implements _Loaded {
  const _$LoadedImpl({this.category, this.status});

  @override
  final TaskCategory? category;
  @override
  final TaskStatus? status;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FiltersState.filtersLoaded(category: $category, status: $status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FiltersState.filtersLoaded'))
      ..add(DiagnosticsProperty('category', category))
      ..add(DiagnosticsProperty('status', status));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskCategory? category, TaskStatus? status)
        filtersLoaded,
  }) {
    return filtersLoaded(category, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TaskCategory? category, TaskStatus? status)?
        filtersLoaded,
  }) {
    return filtersLoaded?.call(category, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskCategory? category, TaskStatus? status)? filtersLoaded,
    required TResult orElse(),
  }) {
    if (filtersLoaded != null) {
      return filtersLoaded(category, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) filtersLoaded,
  }) {
    return filtersLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? filtersLoaded,
  }) {
    return filtersLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? filtersLoaded,
    required TResult orElse(),
  }) {
    if (filtersLoaded != null) {
      return filtersLoaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements FiltersState {
  const factory _Loaded(
      {final TaskCategory? category, final TaskStatus? status}) = _$LoadedImpl;

  @override
  TaskCategory? get category;
  @override
  TaskStatus? get status;
  @override
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
