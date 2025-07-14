import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';
import 'package:scholarships/core/error/failures.dart';
import 'package:scholarships/features/scholarships/data/datasource/scholarships_datasource.dart';
import 'package:scholarships/features/scholarships/domain/entities/scholarship_entity.dart';

abstract class ScholarshipsRepository {
  Future<Either<Failure, List<ScholarshipEntity>>> getScholarships();
}

@LazySingleton(as: ScholarshipsRepository)
class ScholarshipsRepositoryImpl implements ScholarshipsRepository {
  final ScholarshipsDatasource scholarshipsDatasource;

  ScholarshipsRepositoryImpl({required this.scholarshipsDatasource});

  @override
  Future<Either<Failure, List<ScholarshipEntity>>> getScholarships() async {
    try {
      final List<ScholarshipEntity> result = await scholarshipsDatasource
          .getScholarships();
      return Right(result);
    } catch (e) {
      return Left(Failure.throwable(e));
    }
  }
}
