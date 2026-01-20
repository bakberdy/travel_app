import 'package:flutter/material.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarThemeData(
      backgroundColor: Colors.white,
    ),
    colorScheme: ColorScheme(
      brightness: .light,
      primary: Color(0xff176EF1),
      onPrimary: Colors.white,
      surfaceContainer: Color(0xffF3F8FE),
      onSurfaceVariant: Color(0xffB8B8B8),
      primaryContainer: Color(0xffF3F8FE),
      onPrimaryContainer: Color(0xff176EF1),
      secondary: Colors.white,
      onSecondary: Color(0xffB8B8B8),
      error: Colors.red,
      onError: Colors.white,
      surface: Colors.white,
      onSurface: Colors.black,
      outline: Color(0xffE0E5EB)
    ),
    textTheme: TextTheme(
      displayLarge: TextStyle(
        fontFamily: 'Hiatus',
        fontSize: 116,
        color: Colors.white
      ),
      displayMedium: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 32,
        fontWeight: .w500,
      ),

      titleLarge: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 18,
        fontWeight: .w500,
      ), //section titles
      titleMedium: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 14,
        fontWeight: .w500,
      ), //card titles
      titleSmall: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 12,
        fontWeight: .w500,
      ), //card titles

      bodyMedium: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 14,
      ), //the main content style

      labelLarge: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 14,
      ), // text on tabs
      labelMedium: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 12,
      ), // text inside a chips
      labelSmall: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 10,
      ), //rating or label of small cards
    ),
  
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        textStyle: TextStyle(
          fontFamily: 'Montserrat',
          fontSize: 16,
          fontWeight: .w600
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    ),
  );
}
