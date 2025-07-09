import 'package:freezed_annotation/freezed_annotation.dart';

part 'scholarship_entity.freezed.dart';
part 'scholarship_entity.g.dart';

@freezed
sealed class ScholarshipEntity with _$ScholarshipEntity {
  const factory ScholarshipEntity({
    String? deadline,
    required String from,
    required String link,
    required String location,
    required String organizer,
    required String path,
    required String targetGroup,
    required String title,
  }) = _ScholarshipEntity;

  factory ScholarshipEntity.fromJson(Map<String, dynamic> json) =>
      _$ScholarshipEntityFromJson(json);
}
