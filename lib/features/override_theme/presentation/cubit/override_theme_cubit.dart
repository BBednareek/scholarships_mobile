import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:scholarships/features/override_theme/domain/theme_entity.dart';

@lazySingleton
class OverrideThemeCubit extends HydratedCubit<ThemeEntity> {
  OverrideThemeCubit()
    : super(
        const ThemeEntity(
          theme: ThemeMode.system,
          isDark: true,
          isSystem: true,
        ),
      );

  void changeTheme(bool isSystem, bool isDark) {
    if (isSystem)
      emit(
        ThemeEntity(
          theme: ThemeMode.system,
          isDark: isDark,
          isSystem: isSystem,
        ),
      );
    else if (!isSystem && isDark)
      emit(
        ThemeEntity(theme: ThemeMode.dark, isDark: isDark, isSystem: isSystem),
      );
    else
      emit(
        ThemeEntity(theme: ThemeMode.light, isDark: isDark, isSystem: isSystem),
      );
  }

  @override
  ThemeEntity? fromJson(Map<String, dynamic> json) =>
      ThemeEntity.fromJson(json);

  @override
  Map<String, dynamic>? toJson(ThemeEntity state) => state.toJson();
}
