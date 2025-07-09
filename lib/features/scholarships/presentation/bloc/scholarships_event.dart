part of 'scholarships_bloc.dart';

@freezed
abstract class ScholarshipsEvent with _$ScholarshipsEvent {
  const factory ScholarshipsEvent.getScholarships({
    @Default(false) bool loadMore,
  }) = _GetScholarships;
}
