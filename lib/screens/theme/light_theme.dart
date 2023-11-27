import 'package:flutter/material.dart';

ThemeData light = ThemeData(
  fontFamily: 'Poppins',
  primaryColor: const Color(0xFFC60C4D),
  secondaryHeaderColor: const Color(0xFF2E3192),
  disabledColor: const Color.fromARGB(255, 216, 221, 225),

  // ignore: deprecated_member_use
  backgroundColor: const Color(0xFFF3F3F3),
  // ignore: deprecated_member_use
  errorColor: const Color(0xFFE84D4F),
  brightness: Brightness.light,
  hintColor: const Color(0xFF9F9F9F),
  cardColor: Colors.white,

  colorScheme: const ColorScheme.light(
      primary: Color(0xFFC60C4D),
      secondary: Color(0xFF2E3192),
      background: Color(0xFFF3F3F3),
      tertiary: Color.fromARGB(255, 57, 223, 99)),
  textButtonTheme: TextButtonThemeData(
    // ignore: deprecated_member_use
    style: TextButton.styleFrom(primary: const Color(0xFFC60C4D)),
  ),
  tabBarTheme: const TabBarTheme(
    unselectedLabelColor:
        Color(0xFFE84D4F), // Customize the unselected tab label color
    labelColor: Colors.black, // Customize the selected tab label color
    indicator: BoxDecoration(
      color: Color(0xFFEF7822), // Customize the indicator color
    ),
  ),
);
