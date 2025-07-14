import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:scholarships/core/addons/scholarships_equality_checker.dart';
import 'package:scholarships/features/scholarships/domain/entities/scholarship_entity.dart';

part 'favorites_bloc.freezed.dart';
part 'favorites_event.dart';
part 'favorites_state.dart';

@lazySingleton
class FavoritesBloc extends HydratedBloc<FavoritesEvent, FavoritesState> {
  FavoritesBloc() : super(const FavoritesState.loaded(scholarships: [])) {
    on<_AddTile>(_addTile);
    on<_RemoveTile>(_removeTile);
  }

  Future<void> _addTile(_AddTile event, Emitter<FavoritesState> emit) async {
    final current = state;
    if (current is _Loaded) {
      final bool exists = current.scholarships.any(
        (e) => areScholarshipsEqual(e, event.tile),
      );
      if (!exists) {
        emit(
          FavoritesState.loaded(
            scholarships: [...current.scholarships, event.tile],
          ),
        );
      }
    }
  }

  Future<void> _removeTile(
    _RemoveTile event,
    Emitter<FavoritesState> emit,
  ) async {
    final FavoritesState current = state;
    if (current is _Loaded) {
      emit(
        FavoritesState.loaded(
          scholarships: current.scholarships
              .where((e) => !areScholarshipsEqual(e, event.tile))
              .toList(),
        ),
      );
    }
  }

  @override
  FavoritesState? fromJson(Map<String, dynamic> json) {
    try {
      final List<dynamic> favoritesJson = json['favorites'] as List<dynamic>;
      final List<ScholarshipEntity> favorites = favoritesJson
          .map((e) => ScholarshipEntity.fromJson(e as Map<String, dynamic>))
          .toList();
      return FavoritesState.loaded(scholarships: favorites);
    } catch (_) {
      return const FavoritesState.loaded(scholarships: []);
    }
  }

  @override
  Map<String, dynamic>? toJson(FavoritesState state) {
    return state.maybeWhen(
      loaded: (favorites) => {
        'favorites': favorites.map((e) => e.toJson()).toList(),
      },
      orElse: () => null,
    );
  }
}
