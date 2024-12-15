import 'package:chatter_chat_app/constans.dart';
import 'package:flutter/material.dart';

class AppTheme {
  // Light Theme
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: const Color(0xFF1F41BB),
    scaffoldBackgroundColor: kBackgroundColor,
    shadowColor: const Color(0xffCBD6FF),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.black,
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: Colors.black),
      bodySmall: TextStyle(color: kSubTitleColor),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Colors.blue,
    ),
    
    inputDecorationTheme: const InputDecorationTheme(
      fillColor: Color(0xffF1F4FF),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: kPrimaryLightColor, width: 0.5),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 0.5),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 0.5),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent, width: 0.5),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
      ),
      labelStyle: TextStyle(
                    color:kSubTitleColor)
    ),
    
  );

  // Dark Theme
  static final ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      primaryColor: const Color(0xffFFCB45),
      scaffoldBackgroundColor: const Color(0xff1E1E1E),
      shadowColor: const Color(0xFF533C01),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
      ),
      textTheme: const TextTheme(
        bodyLarge: TextStyle(color: Colors.white),
        bodySmall: TextStyle(color: kSubTitleColor),
      ),
      
      inputDecorationTheme: InputDecorationTheme(
        
        fillColor: Colors.white.withOpacity(.02),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: kPrimaryDarkColor, width: 0.5),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red, width: 0.5),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        focusedErrorBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red, width: 0.5),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent, width: 0.5),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
        
      labelStyle: TextStyle(
                    color:kSubTitleColor),
      ));
}
