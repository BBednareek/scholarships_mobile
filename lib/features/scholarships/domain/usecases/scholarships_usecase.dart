import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';
import 'package:scholarships/core/error/failures.dart';
import 'package:scholarships/features/scholarships/data/repository/scholarships_repository.dart';
import 'package:scholarships/features/scholarships/domain/entities/scholarship_entity.dart';

@lazySingleton
class ScholarshipsUsecase {
  final ScholarshipsRepository scholarshipsRepository;
  ScholarshipsUsecase({required this.scholarshipsRepository});

  Future<Either<Failure, List<ScholarshipEntity>>> call({
    DocumentSnapshot? startAfter,
  }) async =>
      await scholarshipsRepository.getScholarships(startAfter: startAfter);
}
