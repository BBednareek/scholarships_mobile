import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

class ThemeModeConverter implements JsonConverter<ThemeMode, int> {
  const ThemeModeConverter();

  @override
  ThemeMode fromJson(int index) => ThemeMode.values[index];

  @override
  int toJson(ThemeMode mode) => mode.index;
}
