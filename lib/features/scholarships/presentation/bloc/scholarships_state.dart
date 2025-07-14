part of 'scholarships_bloc.dart';

@freezed
abstract class ScholarshipsState with _$ScholarshipsState {
  const factory ScholarshipsState.loading() = Loading;
  const factory ScholarshipsState.loaded({
    required List<ScholarshipEntity> scholarships,
  }) = Loaded;
  const factory ScholarshipsState.error({required String errorMessage}) = Error;
}
