import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

ThemeData appTheme = ThemeData(
  brightness: Brightness.dark,
  appBarTheme: const AppBarTheme(backgroundColor: Color(0xFF000000)),

  // Cupertino theme
  cupertinoOverrideTheme: const CupertinoThemeData(
    barBackgroundColor: Color(0xFF000000),
    primaryColor: Color(0xFFFFFFFF),
    textTheme:
        CupertinoTextThemeData(textStyle: TextStyle(color: Color(0xFFF5F5F5))),
  ),

  // Bottom nav bar theme
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Color(0xFF000000), elevation: 0),

  // Card theme
  cardColor: const Color(0xFF202427),

  // Icon Color
  iconTheme: const IconThemeData(color: Color(0xFFFFFFFF)),

  // Material App theme
  colorScheme: const ColorScheme.dark(
      surface: Color(0xFF000000),
      primary: Color(0xFF212121),
      secondary: Color(0xFF212121)),
  textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: const Color(0xFF000000))),

// Text Theme
  textTheme: const TextTheme(
    // Header text style
    displayLarge: TextStyle(
        fontSize: 60,
        color: Color(0xFFFFFFFF),
        fontFamily: 'ClashDisplay',
        fontWeight: FontWeight.w500,
        letterSpacing: 0.2),
    // Title text
    titleMedium: TextStyle(
      fontSize: 18,
      color: Color(0xFFA7A7A7),
      letterSpacing: 0.5,
      fontFamily: 'ClashDisplay',
      fontWeight: FontWeight.w400,
    ),

    // default text style
    displaySmall: TextStyle(
      fontSize: 14,
      color: Color(0xFFA7A7A7),
      letterSpacing: 0.1,
      fontFamily: 'ClashDisplay',
      fontWeight: FontWeight.w400,
    ),

    // Highlighted and label font style
    titleSmall: TextStyle(
      fontSize: 14,
      color: Color(0xFFA7A7A7),
      fontFamily: 'ClashDisplay',
      fontWeight: FontWeight.w500,
    ),

    displayMedium: TextStyle(
      fontSize: 14,
      color: Color(0xFFA7A7A7),
      letterSpacing: 0.5,
      fontFamily: 'ClashDisplay',
      fontWeight: FontWeight.w400,
    ),

    // Filled forms
    labelSmall: TextStyle(
      fontSize: 14,
      color: Color(0xFFA7A7A7),
      fontFamily: 'ClashDisplay',
      fontWeight: FontWeight.bold,
    ),
  ),
);
