import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:scholarships/features/scholarships/domain/entities/scholarship_entity.dart';

part 'filters_bloc.freezed.dart';
part 'filters_event.dart';
part 'filters_state.dart';

class FiltersBloc extends Bloc<FiltersEvent, FiltersState> {
  FiltersBloc() : super(FiltersState.initial()) {
    on<_SetOrganizerFilter>(_setOrganizerFilter);
    on<_SetLocationFilter>(_setLocationFilter);
    on<_SetSortByDeadline>(_setSortByDeadline);
    on<_ClearFilters>(_clearFilters);
    on<_Apply>(_apply);
  }

  void _setOrganizerFilter(
    _SetOrganizerFilter event,
    Emitter<FiltersState> emit,
  ) => emit(state.copyWith(organizer: event.organizer));

  void _setLocationFilter(
    _SetLocationFilter event,
    Emitter<FiltersState> emit,
  ) => emit(state.copyWith(location: event.location));

  void _setSortByDeadline(
    _SetSortByDeadline event,
    Emitter<FiltersState> emit,
  ) => emit(state.copyWith(sortByDeadlineAsc: event.ascending));

  void _clearFilters(_ClearFilters event, Emitter<FiltersState> emit) =>
      emit(FiltersState.initial());

  void _apply(_Apply event, Emitter<FiltersState> emit) {
    List<ScholarshipEntity> result = [...event.allScholarships];

    if (state.organizer != null)
      result = result
          .where(
            (element) =>
                element.from.toLowerCase() == state.organizer!.toLowerCase(),
          )
          .toList();

    if (state.location != null)
      state.location!.toLowerCase() == 'polska'
          ? result = result
                .where(
                  (element) =>
                      element.location.toLowerCase().contains('polska'),
                )
                .toList()
          : result = result
                .where(
                  (element) =>
                      !element.location.toLowerCase().contains('polska'),
                )
                .toList();

    result.sort((a, b) {
      final DateTime? dateA = _parseDeadline(a.deadline);
      final DateTime? dateB = _parseDeadline(b.deadline);

      if (dateA == null && dateB == null) return 0;
      if (dateA == null) return 1;
      if (dateB == null) return -1;

      return state.sortByDeadlineAsc
          ? dateA.compareTo(dateB)
          : dateB.compareTo(dateA);
    });

    emit(state.copyWith(filtered: result, filtresApplied: true));
  }

  DateTime? _parseDeadline(String? raw) {
    if (raw == null || raw.toLowerCase().contains('czekamy')) return null;

    try {
      return DateFormat('yyyy.MM.dd').parseStrict(raw.trim());
    } catch (_) {
      return null;
    }
  }
}
