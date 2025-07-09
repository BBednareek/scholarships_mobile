import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scholarships/features/override_theme/domain/theme_mode_converter.dart';

part 'theme_entity.freezed.dart';
part 'theme_entity.g.dart';

@freezed
sealed class ThemeEntity with _$ThemeEntity {
  const factory ThemeEntity({
    @ThemeModeConverter() required ThemeMode theme,
    required bool isDark,
    required bool isSystem,
  }) = _ThemeEntity;

  factory ThemeEntity.fromJson(Map<String, dynamic> json) => _$ThemeEntityFromJson(json);
}
