import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ThemeColors {
  // Dark Theme
  static const Color darkBackground = Color(0xFF121212);
  static const Color darkContainer = Color(0xFF1E1E1E);
  static const Color darkTxt = Color(0xFFEAEAEA);
  static const Color darkDisabledTxt = Color(0xFF666666);

  // Light Theme
  static const Color lightBackground = Color(0xFFF5F7FA);
  static const Color lightContainer = Color(0xFFFFFFFF);
  static const Color lightTxt = Color(0xFF1C1C1C);

  // Shared
  static const Color title = Color(0xFF253858);
  static const Color greyTxt = Color(0xFF777F89);
  static const Color errorBackground = Color(0xFFFFE5E5);
  static const Color errorTxt = Color(0xFFD32F2F);
  static const Color loginButtonBackground = Color(0xFFF0F0F0);
  static const Color green = Color(0xFF2E7D32);

  static const Color infoBanner = Color(0xFFFFF8E1);
  static const Color primaryBlue = Color(0xFF1976D2);
  static const Color blurPopUp = Color(0xFF0000CC);
  static const Color pending = Color(0xFFF6C000);
  static const Color unactive = Color(0xFF999999);
  static const Color success = Color(0xFF388E3C);
  static const Color transparent = Colors.transparent;
  static const Color black = Colors.black;
  static const Color progressColor = Color(0xFFE0E0E0);
}

final ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  scaffoldBackgroundColor: ThemeColors.darkBackground,
  colorScheme: const ColorScheme.dark().copyWith(
    primary: ThemeColors.primaryBlue,
    onPrimary: ThemeColors.darkTxt,
    secondary: ThemeColors.primaryBlue,
    onSecondary: ThemeColors.darkTxt,
    error: ThemeColors.errorBackground,
    onError: ThemeColors.errorTxt,
    surface: ThemeColors.darkContainer,
    onSurface: ThemeColors.darkTxt,
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: ThemeColors.darkContainer,
    foregroundColor: ThemeColors.darkTxt,
    titleTextStyle: TextStyle(fontSize: 18, color: ThemeColors.darkTxt),
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.light,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: ThemeColors.primaryBlue,
      foregroundColor: Colors.white,
      disabledForegroundColor: ThemeColors.darkDisabledTxt,
      disabledBackgroundColor: ThemeColors.darkContainer,
      splashFactory: NoSplash.splashFactory,
      elevation: 0,
      shadowColor: ThemeColors.transparent,
    ),
  ),
  checkboxTheme: CheckboxThemeData(
    side: const BorderSide(color: ThemeColors.primaryBlue, width: 2),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
    checkColor: WidgetStateProperty.all(ThemeColors.darkTxt),
    fillColor: WidgetStateProperty.all(ThemeColors.primaryBlue),
  ),
  textTheme: const TextTheme(
    displayMedium: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 12,
      color: ThemeColors.darkTxt,
    ),
    titleLarge: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 32,
      color: ThemeColors.darkTxt,
    ),
    bodyMedium: TextStyle(fontSize: 16, color: ThemeColors.darkTxt),
  ),
  progressIndicatorTheme: const ProgressIndicatorThemeData(
    color: ThemeColors.primaryBlue,
    circularTrackColor: ThemeColors.darkContainer,
  ),
  textSelectionTheme: const TextSelectionThemeData(
    cursorColor: ThemeColors.primaryBlue,
    selectionHandleColor: ThemeColors.primaryBlue,
  ),
);

final ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  scaffoldBackgroundColor: ThemeColors.lightBackground,
  colorScheme: const ColorScheme.light().copyWith(
    primary: ThemeColors.primaryBlue,
    onPrimary: ThemeColors.lightTxt,
    secondary: ThemeColors.primaryBlue,
    onSecondary: ThemeColors.lightTxt,
    error: ThemeColors.errorBackground,
    onError: ThemeColors.errorTxt,
    surface: ThemeColors.lightContainer,
    onSurface: ThemeColors.lightTxt,
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: ThemeColors.lightContainer,
    foregroundColor: ThemeColors.lightTxt,
    titleTextStyle: TextStyle(fontSize: 18, color: ThemeColors.lightTxt),
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.dark,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: ThemeColors.primaryBlue,
      foregroundColor: Colors.white,
      disabledForegroundColor: ThemeColors.greyTxt,
      disabledBackgroundColor: ThemeColors.loginButtonBackground,
      splashFactory: NoSplash.splashFactory,
      elevation: 0,
      shadowColor: ThemeColors.transparent,
    ),
  ),
  checkboxTheme: CheckboxThemeData(
    side: const BorderSide(color: ThemeColors.primaryBlue, width: 2),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
    checkColor: WidgetStateProperty.all(ThemeColors.lightTxt),
    fillColor: WidgetStateProperty.all(ThemeColors.primaryBlue),
  ),
  textTheme: const TextTheme(
    displayMedium: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 12,
      color: ThemeColors.lightTxt,
    ),
    titleLarge: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 32,
      color: ThemeColors.lightTxt,
    ),
    bodyMedium: TextStyle(fontSize: 16, color: ThemeColors.lightTxt),
  ),
  progressIndicatorTheme: const ProgressIndicatorThemeData(
    color: ThemeColors.primaryBlue,
    circularTrackColor: ThemeColors.lightContainer,
  ),
  textSelectionTheme: const TextSelectionThemeData(
    cursorColor: ThemeColors.primaryBlue,
    selectionHandleColor: ThemeColors.primaryBlue,
  ),
);
