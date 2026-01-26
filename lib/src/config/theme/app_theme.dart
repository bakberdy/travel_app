import 'package:flutter/material.dart';
import 'package:travel_app/src/config/theme/app_colors.dart';
import 'package:travel_app/src/config/theme/app_theme_extensions.dart';



class AppTheme {
  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.lightSurface,
    appBarTheme: AppBarThemeData(
      backgroundColor: AppColors.lightSurface,
    ),
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: AppColors.lightPrimary,
      onPrimary: AppColors.lightOnPrimary,
      surfaceContainer: AppColors.lightSurfaceContainer,
      onSurfaceVariant: AppColors.lightOnSurfaceVariant,
      primaryContainer: AppColors.lightPrimaryContainer,
      onPrimaryContainer: AppColors.lightOnPrimaryContainer,
      secondary: AppColors.lightSecondary,
      onSecondary: AppColors.lightOnSecondary,
      error: AppColors.lightError,
      onError: AppColors.lightOnError,
      surface: AppColors.lightSurface,
      onSurface: AppColors.lightOnSurface,
      outline: AppColors.lightOutline
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: AppColors.lightSurface,
          enableFeedback: false,
          showUnselectedLabels: true,
          showSelectedLabels: true,
          selectedIconTheme: IconThemeData(color: AppColors.lightPrimary),
          unselectedIconTheme: IconThemeData(color: AppColors.lightOnSecondary),
          selectedLabelStyle: TextStyle(
            color: AppColors.lightPrimary,
            fontWeight: FontWeight.w600,
          ),
          unselectedLabelStyle: TextStyle(color: AppColors.lightOnSurface, fontSize: 12),
        ),
    textTheme: TextTheme(
      displayLarge: TextStyle(
        fontFamily: 'Hiatus',
        fontSize: 116,
        color: AppColors.lightOnPrimary
      ),
      displayMedium: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 32,
        fontWeight: FontWeight.w500,
      ),

      titleLarge: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ), //section titles
      titleMedium: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ), //card titles
      titleSmall: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 12,
        fontWeight: FontWeight.w600,
      ), //card titles

      bodyMedium: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 14,
        height: 1.2
      ), //the main content style

       bodySmall: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 10,
        height: 1.2
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
          fontWeight: FontWeight.w600
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    ),
    extensions: [
      DifficultyColors(
        easy: AppColors.difficultyEasy,
        medium: AppColors.difficultyMedium,
        hard: AppColors.difficultyHard,
      ),
    ],
  );
}
