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

  Future<void> _getScholarships(
    _GetScholarships event,
    Emitter<ScholarshipsState> emit,
  ) async {
    emit(const ScholarshipsState.loading());

    final Either<Failure, List<ScholarshipEntity>> result =
        await scholarshipsUsecase.call();

    result.fold(
      (l) => emit(Error(errorMessage: l.message)),
      (scholarships) => emit(Loaded(scholarships: scholarships)),
    );
  }
}
