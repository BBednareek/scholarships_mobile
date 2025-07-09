import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';
import 'package:scholarships/core/error/failures.dart';
import 'package:scholarships/features/scholarships/data/datasource/scholarships_datasource.dart';
import 'package:scholarships/features/scholarships/domain/entities/scholarship_entity.dart';

abstract class ScholarshipsRepository {
  Future<Either<Failure, (List<ScholarshipEntity>, DocumentSnapshot?)>>
  getScholarships({DocumentSnapshot? startAfter});
  Future<Either<Failure, (List<ScholarshipEntity>, DocumentSnapshot?)>>
  getNextScholarships(DocumentSnapshot lastDoc);
}

@LazySingleton(as: ScholarshipsRepository)
class ScholarshipsRepositoryImpl implements ScholarshipsRepository {
  final ScholarshipsDatasource scholarshipsDatasource;

  ScholarshipsRepositoryImpl({required this.scholarshipsDatasource});

  @override
  Future<Either<Failure, (List<ScholarshipEntity>, DocumentSnapshot?)>>
  getScholarships({DocumentSnapshot? startAfter}) async {
    try {
      final (List<ScholarshipEntity>, DocumentSnapshot?) scholarships =
          await scholarshipsDatasource.getInitialScholarships();
      return Right(scholarships);
    } catch (e) {
      return Left(Failure.throwable(e));
    }
  }

  @override
  Future<Either<Failure, (List<ScholarshipEntity>, DocumentSnapshot<Object?>?)>>
  getNextScholarships(DocumentSnapshot<Object?> lastDoc) {
    // TODO: implement getNextScholarships
    throw UnimplementedError();
  }
}
