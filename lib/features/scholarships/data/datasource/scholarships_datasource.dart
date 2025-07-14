import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';
import 'package:scholarships/core/error/handler.dart';
import 'package:scholarships/features/scholarships/domain/entities/scholarship_entity.dart';

@module
abstract class FirebaseModule {
  @lazySingleton
  FirebaseFirestore get firestore => FirebaseFirestore.instance;
}

abstract class ScholarshipsDatasource {
  Future<List<ScholarshipEntity>> getScholarships();
}

@LazySingleton(as: ScholarshipsDatasource)
class ScholarshipsDatasourceImpl
    with ErrorHandling
    implements ScholarshipsDatasource {
  final FirebaseFirestore firestore;

  ScholarshipsDatasourceImpl({required this.firestore});

  @override
  Future<List<ScholarshipEntity>> getScholarships() async {
    final QuerySnapshot<Map<String, dynamic>> snapshot = await firestore
        .collection(dotenv.get('COLLECTION_ID'))
        .orderBy('title')
        .get();

    final List<ScholarshipEntity> scholarships = snapshot.docs
        .map((doc) => ScholarshipEntity.fromJson(doc.data()))
        .toList();

    return scholarships;
  }
}
