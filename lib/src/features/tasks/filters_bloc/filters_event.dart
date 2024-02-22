part of 'filters_bloc.dart';

@freezed
class FiltersEvent with _$FiltersEvent {
  const factory FiltersEvent.filterStatusSelected({
    required TaskStatus status,
  }) = _FilterStatusSelected;
  const factory FiltersEvent.filterCategorySelected({
    required TaskCategory category,
  }) = _FilterCategorySelected;
}
