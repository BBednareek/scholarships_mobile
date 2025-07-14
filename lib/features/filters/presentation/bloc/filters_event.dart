part of 'filters_bloc.dart';

@freezed
abstract class FiltersEvent with _$FiltersEvent {
  const factory FiltersEvent.setOrganizerFilter(String? organizer) =
      _SetOrganizerFilter;
  const factory FiltersEvent.setLocationFilter(String? location) =
      _SetLocationFilter;
  const factory FiltersEvent.setSortByDeadline(bool ascending) =
      _SetSortByDeadline;
  const factory FiltersEvent.apply(List<ScholarshipEntity> allScholarships) =
      _Apply;
  const factory FiltersEvent.clear() = _ClearFilters;
}
