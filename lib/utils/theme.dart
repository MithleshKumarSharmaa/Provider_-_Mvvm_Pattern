// lib/utils/theme.dart
import 'package:flutter/material.dart';
import 'constants.dart';

ThemeData appTheme() {
  return ThemeData(
    primaryColor: primaryColor,
    colorScheme: ColorScheme.fromSwatch().copyWith(
      secondary: secondaryColor,
    ),
    textTheme: const TextTheme(
      displayLarge: headingStyle,
      titleMedium: subtitleStyle,
    ),
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      backgroundColor: primaryColor,
      titleTextStyle: headingStyle.copyWith(color: Colors.white),
      toolbarTextStyle: subtitleStyle.copyWith(color: Colors.white),
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: primaryColor,
      textTheme: ButtonTextTheme.primary,
    ),
  );
}
