import 'package:flutter/material.dart';

ThemeData dark = ThemeData(
  fontFamily: 'Poppins',
  primaryColor: const Color(0xFFffbd5c),
  secondaryHeaderColor: const Color(0xFF009f67),
  disabledColor: const Color(0xffa2a7ad),
  // ignore: deprecated_member_use
  backgroundColor: const Color(0xFF343636),
  // ignore: deprecated_member_use
  errorColor: const Color(0xFFdd3135),
  brightness: Brightness.dark,
  hintColor: const Color(0xFFbebebe),
  cardColor: Colors.black,
  colorScheme: const ColorScheme.dark(
    primary: Color(0xFFffbd5c),
    secondary: Color(0xFFffbd5c),
    background: Color.fromARGB(255, 10, 0, 0),
  ),
  textButtonTheme: TextButtonThemeData(
      // ignore: deprecated_member_use
      style: TextButton.styleFrom(primary: const Color(0xFFffbd5c))),

  tabBarTheme: const TabBarTheme(
    unselectedLabelColor:
        Color(0xFFffbd5c), // Customize the unselected tab label color
    labelColor: Colors.white, // Customize the selected tab label color
    indicator: BoxDecoration(
      color: Color(0xFFffbd5c), // Customize the indicator color
    ),
  ),

  // textStyle: Dimensions())
);
