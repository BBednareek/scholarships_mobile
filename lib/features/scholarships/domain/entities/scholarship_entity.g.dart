// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scholarship_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ScholarshipEntity _$ScholarshipEntityFromJson(Map<String, dynamic> json) =>
    _ScholarshipEntity(
      deadline: json['deadline'] as String?,
      from: json['from'] as String,
      link: json['link'] as String,
      location: json['location'] as String,
      organizer: json['organizer'] as String,
      path: json['path'] as String,
      targetGroup: json['targetGroup'] as String,
      title: json['title'] as String,
    );

Map<String, dynamic> _$ScholarshipEntityToJson(_ScholarshipEntity instance) =>
    <String, dynamic>{
      'deadline': instance.deadline,
      'from': instance.from,
      'link': instance.link,
      'location': instance.location,
      'organizer': instance.organizer,
      'path': instance.path,
      'targetGroup': instance.targetGroup,
      'title': instance.title,
    };
