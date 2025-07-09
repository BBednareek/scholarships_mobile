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
  Future<(List<ScholarshipEntity>, DocumentSnapshot?)> getInitialScholarships();
  Future<(List<ScholarshipEntity>, DocumentSnapshot?)> getNextScholarships(
    DocumentSnapshot lastDoc,
  );
}

@LazySingleton(as: ScholarshipsDatasource)
class ScholarshipsDatasourceImpl
    with ErrorHandling
    implements ScholarshipsDatasource {
  static const int _pageSize = 20;
  final FirebaseFirestore firestore;

  ScholarshipsDatasourceImpl({required this.firestore});

  @override
  Future<(List<ScholarshipEntity>, DocumentSnapshot?)>
  getInitialScholarships() async {
    try {
      final QuerySnapshot<Map<String, dynamic>> snapshot = await firestore
          .collection(dotenv.get('COLLECTION_ID'))
          .orderBy('title')
          .limit(_pageSize)
          .get();

      final List<ScholarshipEntity> scholarships = snapshot.docs
          .map((doc) => ScholarshipEntity.fromJson(doc.data()))
          .toList();

      final QueryDocumentSnapshot<Map<String, dynamic>>? lastDoc =
          snapshot.docs.isNotEmpty ? snapshot.docs.last : null;

      return (scholarships, lastDoc);
    } catch (e, st) {
      throw defaultException(e, st);
    }
  }

  @override
  Future<(List<ScholarshipEntity>, DocumentSnapshot?)> getNextScholarships(
    DocumentSnapshot lastDoc,
  ) async {
    try {
      final QuerySnapshot<Map<String, dynamic>> snapshot = await firestore
          .collection(dotenv.get('COLLECTION_ID'))
          .orderBy('title')
          .startAfterDocument(lastDoc)
          .limit(_pageSize)
          .get();

      final List<ScholarshipEntity> scholarships = snapshot.docs
          .map((doc) => ScholarshipEntity.fromJson(doc.data()))
          .toList();

      final QueryDocumentSnapshot<Map<String, dynamic>>? nextLast =
          snapshot.docs.isNotEmpty ? snapshot.docs.last : null;

      return (scholarships, nextLast);
    } catch (e, st) {
      throw defaultException(e, st);
    }
  }
}
