import 'package:chatter_chat_app/constans.dart';
import 'package:flutter/material.dart';

class AppTheme {
  // Light Theme
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: const Color(0xFF3259F3),
    scaffoldBackgroundColor: kBackgroundColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.blue,
      foregroundColor: Colors.white,
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: Colors.black),
      bodySmall: TextStyle(color: kSubTitleColor),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Colors.blue,
    ),
  );

  // Dark Theme
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: const Color(0xffFFCB45),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: Colors.white),
      bodySmall: TextStyle(color: kSubTitleColor),
    ),
  );
}
