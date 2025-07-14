import 'package:scholarships/features/scholarships/domain/entities/scholarship_entity.dart';

bool areScholarshipsEqual(ScholarshipEntity a, ScholarshipEntity b) =>
    a.title == b.title && a.link == b.link && a.organizer == b.organizer;
