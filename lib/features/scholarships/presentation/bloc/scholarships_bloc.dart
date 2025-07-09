import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:either_dart/either.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scholarships/core/error/failures.dart';
import 'package:scholarships/features/scholarships/domain/entities/scholarship_entity.dart';
import 'package:scholarships/features/scholarships/domain/usecases/scholarships_usecase.dart';

part 'scholarships_bloc.freezed.dart';
part 'scholarships_event.dart';
part 'scholarships_state.dart';

class ScholarshipsBloc extends Bloc<ScholarshipsEvent, ScholarshipsState> {
  final ScholarshipsUsecase scholarshipsUsecase;

  ScholarshipsBloc({required this.scholarshipsUsecase})
    : super(const ScholarshipsState.loading()) {
    on<_GetScholarships>(_getScholarships);
  }

  DocumentSnapshot? _lastDocument;
  final bool _hasMore = true;

  Future<void> _getScholarships(
    _GetScholarships event,
    Emitter<ScholarshipsState> emit,
  ) async {
    if (!_hasMore && event.loadMore) return;

    if (!event.loadMore) {
      emit(const ScholarshipsState.loading());
      _lastDocument = null;
      _hasMore = true;
    }

    final result = await scholarshipsUsecase.call(startAfter: _lastDocument);

    result.fold((l) => emit(_Error(errorMessage: l.message)), (r) {
      if (r.length < 20) _hasMore = false;
      if (r.isNotEmpty) {
        _lastDocument = firestore
            .collection(dotenv.get('COLLECTION_ID'))
            .orderBy('title')
            .limit(1)
            .startAfter([r.last.title]) // assuming 'title' is unique
            .get()
            .then((qs) => qs.docs.first);
      }

      final currentState = state;
      if (currentState is _Loaded && event.loadMore) {
        emit(_Loaded(scholarships: [...currentState.scholarships, ...r]));
      } else {
        emit(_Loaded(scholarships: r));
      }
    });
  }
}
