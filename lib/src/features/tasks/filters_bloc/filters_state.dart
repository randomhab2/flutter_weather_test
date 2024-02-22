part of 'filters_bloc.dart';

@freezed
class FiltersState with _$FiltersState {
  const factory FiltersState.filtersLoaded({
    TaskCategory? category,
    TaskStatus? status,
  }) = _Loaded;
}
