import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';
import 'package:scholarships/core/error/failures.dart';
import 'package:scholarships/features/scholarships/data/repository/scholarships_repository.dart';
import 'package:scholarships/features/scholarships/domain/entities/scholarship_entity.dart';

@lazySingleton
class ScholarshipsUsecase {
  final ScholarshipsRepository scholarshipsRepository;
  ScholarshipsUsecase({required this.scholarshipsRepository});

  Future<Either<Failure, List<ScholarshipEntity>>> call() async =>
      await scholarshipsRepository.getScholarships();
}
