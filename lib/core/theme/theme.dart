import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ThemeColors {
  //for dark theme
  static const Color darkBackground = Color(0xFF2C3037);
  static const Color darkContainer = Color(0xFF3F454E);
  static const Color darkTxt = Color(0xFFF4F4F4);
  static const Color darkDisabledTxt = Color(0x70F4F4F4);

  //for light theme
  static const Color lightBackground = Color(0xFFEDF5FC);
  static const Color lightContainer = Color(0xFFFFFFFF);
  static const Color lightTxt = Color(0xFF253858);
  static const Color title = Color(0xFF253858);
  static const Color greyTxt = Color(0xFF777F89);
  static const Color errorBackground = Color(0xFFFFCFCF);
  static const Color errorTxt = Color(0xFFFF0000);
  static const Color loginButtonBackground = Color(0xFFF7F7F7);
  static const Color green = Color(0xFF00CE15);

  //for both themes
  static const Color infoBanner = Color(0xFFFFF3CC);
  static const Color primaryBlue = Color(0xFF3171FE);
  static const Color blurPopUp = Color(0xFF0000CC);
  static const Color pending = Color(0xFFF6C000);
  static const Color unactive = Color(0xFF73777B);
  static const Color success = Color(0xFF169D00);
  static const Color transparent = Colors.transparent;
  static const Color black = Colors.black;
  static const Color progressColor = Color(0xFFF4F4F4);
}

ThemeData darkTheme = ThemeData(
  useMaterial3: false,
  brightness: Brightness.dark,
  scaffoldBackgroundColor: ThemeColors.darkBackground,
  colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: ThemeColors.darkContainer,
      onPrimary: ThemeColors.darkTxt,
      secondary: ThemeColors.primaryBlue,
      onSecondary: ThemeColors.darkTxt,
      error: ThemeColors.errorBackground,
      onError: ThemeColors.errorTxt,
      surface: ThemeColors.transparent,
      onSurface: ThemeColors.black),
  appBarTheme: const AppBarTheme(
    titleTextStyle: TextStyle(fontSize: 18),
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.light,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          disabledForegroundColor: ThemeColors.darkDisabledTxt,
          backgroundColor: ThemeColors.primaryBlue,
          foregroundColor: ThemeColors.darkTxt,
          splashFactory: NoSplash.splashFactory,
          elevation: 0,
          shadowColor: ThemeColors.transparent)),
  checkboxTheme: CheckboxThemeData(
      side: const BorderSide(color: ThemeColors.primaryBlue, width: 2),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
  textTheme: const TextTheme(
    displayMedium: TextStyle(
        fontFamily: 'Poppins', fontSize: 12, color: ThemeColors.darkTxt),
    titleLarge: TextStyle(
        fontFamily: 'Poppins', fontSize: 32, color: ThemeColors.darkTxt),
  ),
  progressIndicatorTheme: const ProgressIndicatorThemeData(
    color: ThemeColors.primaryBlue,
    circularTrackColor: ThemeColors.transparent,
  ),
  textSelectionTheme: const TextSelectionThemeData(
      cursorColor: ThemeColors.darkTxt,
      selectionHandleColor: ThemeColors.primaryBlue),
);

ThemeData lightTheme = ThemeData(
  useMaterial3: false,
  brightness: Brightness.light,
  scaffoldBackgroundColor: ThemeColors.lightBackground,
  colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: ThemeColors.lightContainer,
      onPrimary: ThemeColors.lightTxt,
      secondary: ThemeColors.primaryBlue,
      onSecondary: ThemeColors.darkTxt,
      error: ThemeColors.errorBackground,
      onError: ThemeColors.errorTxt,
      surface: ThemeColors.transparent,
      onSurface: ThemeColors.black),
  appBarTheme: const AppBarTheme(
    titleTextStyle: TextStyle(fontSize: 18),
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.dark,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          backgroundColor: ThemeColors.primaryBlue,
          foregroundColor: ThemeColors.darkTxt,
          splashFactory: NoSplash.splashFactory,
          elevation: 0,
          shadowColor: ThemeColors.transparent)),
  checkboxTheme: CheckboxThemeData(
      side: const BorderSide(color: ThemeColors.primaryBlue, width: 2),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
  textTheme: const TextTheme(
    displayMedium: TextStyle(
        fontFamily: 'Poppins', fontSize: 12, color: ThemeColors.lightTxt),
  ),
  progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: ThemeColors.primaryBlue,
      circularTrackColor: ThemeColors.transparent),
  textSelectionTheme: const TextSelectionThemeData(
      cursorColor: ThemeColors.lightTxt,
      selectionHandleColor: ThemeColors.primaryBlue),
);
