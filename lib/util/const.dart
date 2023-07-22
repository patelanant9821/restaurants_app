import 'package:flutter/material.dart';

class Constants {
  static String appName = "Foody Bite";

  //Colors for theme
  static Color lightPrimary = const Color(0xfffcfcff);
  static Color darkPrimary = Colors.black;
  static Color lightAccent = const Color(0xff5563ff);
  static Color darkAccent = const Color(0xff5563ff);
  static Color lightBG = const Color(0xfffcfcff);
  static Color darkBG = Colors.black;
  static Color? ratingBG = Colors.yellow[600];

  static ThemeData lightTheme = ThemeData(
    primaryColor: lightPrimary,
    scaffoldBackgroundColor: lightBG,
    appBarTheme: AppBarTheme(
      titleTextStyle: TextStyle(
        color: darkBG,
        fontSize: 18.0,
        fontWeight: FontWeight.w800,
      ),
    ),

    //     ColorScheme(background: lightBG).copyWith(secondary: lightAccent),
    textSelectionTheme: TextSelectionThemeData(cursorColor: lightAccent),
  ).copyWith(
      colorScheme: darkTheme.colorScheme.copyWith(secondary: lightAccent));

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: darkPrimary,
    scaffoldBackgroundColor: darkBG,
    appBarTheme: AppBarTheme(
      titleTextStyle: TextStyle(
        color: lightBG,
        fontSize: 18.0,
        fontWeight: FontWeight.w800,
      ),
    ),
    // colorScheme:
    //     ColorScheme(background: darkBG).copyWith(secondary: darkAccent),
    textSelectionTheme: TextSelectionThemeData(cursorColor: darkAccent),
  ).copyWith(
      colorScheme: darkTheme.colorScheme.copyWith(secondary: darkAccent));
}
