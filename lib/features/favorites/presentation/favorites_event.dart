part of 'favorites_bloc.dart';

@freezed
abstract class FavoritesEvent with _$FavoritesEvent {
  const factory FavoritesEvent.addTile({required ScholarshipEntity tile}) =
      _AddTile;
  const factory FavoritesEvent.removeTile({required ScholarshipEntity tile}) =
      _RemoveTile;
}
