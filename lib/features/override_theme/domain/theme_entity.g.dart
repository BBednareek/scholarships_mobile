// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ThemeEntity _$ThemeEntityFromJson(Map<String, dynamic> json) => _ThemeEntity(
  theme: const ThemeModeConverter().fromJson((json['theme'] as num).toInt()),
  isDark: json['isDark'] as bool,
  isSystem: json['isSystem'] as bool,
);

Map<String, dynamic> _$ThemeEntityToJson(_ThemeEntity instance) =>
    <String, dynamic>{
      'theme': const ThemeModeConverter().toJson(instance.theme),
      'isDark': instance.isDark,
      'isSystem': instance.isSystem,
    };
