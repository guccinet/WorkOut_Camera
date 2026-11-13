import 'package:flutter/material.dart';

final ThemeData defaultTheme = ThemeData(
    scaffoldBackgroundColor: Color(0xff01a0e1),
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      error: Colors.red,
      onError: Colors.white,
      onPrimary: Colors.transparent,
      onSecondary: Colors.transparent,
      onSurface: Colors.transparent,
      primary: Color(0x00000000),
      secondary: Color(0xffffffff),
      surface: Colors.transparent,
    ),
    textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
      backgroundColor: const Color(0xFF000000),
      textStyle: const TextStyle(
        color: Color(0xFF000000),
      ),
    )));
