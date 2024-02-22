import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather_test/src/enums/task_category.dart';
import 'package:flutter_weather_test/src/enums/task_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'filters_event.dart';
part 'filters_state.dart';
part 'filters_bloc.freezed.dart';

class FiltersBloc extends Bloc<FiltersEvent, FiltersState> {
  FiltersBloc()
      : super(const _Loaded(
          category: TaskCategory.all,
          status: TaskStatus.all,
        )) {
    on<_FilterStatusSelected>(_onFilterStatusSelected);
    on<_FilterCategorySelected>(_onFilterCategorySelected);
  }

  void _onFilterStatusSelected(_FilterStatusSelected event, emit) {
    final filters = state.copyWith(
      status: event.status,
    );

    emit(filters);
  }

  void _onFilterCategorySelected(_FilterCategorySelected event, emit) {
    final filters = state.copyWith(
      category: event.category,
    );
    emit(filters);
  }
}
