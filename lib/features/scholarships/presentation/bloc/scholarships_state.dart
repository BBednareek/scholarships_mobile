part of 'scholarships_bloc.dart';

@freezed
abstract class ScholarshipsState with _$ScholarshipsState {
  const factory ScholarshipsState.loading() = _Loading;
  const factory ScholarshipsState.loaded({required List<ScholarshipEntity> scholarships}) = _Loaded;
  const factory ScholarshipsState.error({required String errorMessage}) = _Error;
}
