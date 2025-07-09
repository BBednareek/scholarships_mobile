part of 'favorites_bloc.dart';

@freezed
abstract class FavoritesState with _$FavoritesState {
  const factory FavoritesState.loading() = _Loading;
  const factory FavoritesState.loaded({
    required List<ScholarshipEntity> scholarships,
  }) = _Loaded;
}
