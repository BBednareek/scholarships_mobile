part of 'filters_bloc.dart';

@freezed
abstract class FiltersState with _$FiltersState {
  const factory FiltersState({
    required List<ScholarshipEntity> filtered,
    required bool sortByDeadlineAsc,
    required bool filtresApplied,
    required String? organizer,
    required String? location,
  }) = _FiltersState;

  factory FiltersState.initial() => const FiltersState(
    filtresApplied: false,
    filtered: [],
    organizer: null,
    location: null,
    sortByDeadlineAsc: true,
  );
}
