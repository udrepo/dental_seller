import 'package:flutter/material.dart';
import 'app_palette.dart';

class AppTheme {
  static const String _fontFamily = 'Nunito';

  static final ThemeData lightTheme = ThemeData(
    fontFamily: _fontFamily,
    scaffoldBackgroundColor: AppPalette.white,
    
    colorScheme: const ColorScheme.light(
      primary: AppPalette.primary,
      secondary: AppPalette.secondary,
      surface: AppPalette.white,
      onSurface: AppPalette.black,
    ),

    // Define the TextTheme manually since we aren't using the package
    textTheme: const TextTheme(
      // Headlines (Large text)
      displayLarge: TextStyle(fontSize: 57, fontWeight: FontWeight.w700),
      displayMedium: TextStyle(fontSize: 45, fontWeight: FontWeight.w700),
      
      // Titles (Headers)
      titleLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.w600), // Maps to Nunito-SemiBold
      titleMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w500), // Maps to Nunito-Medium
      
      // Body (Standard text)
      bodyLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.w400), // Maps to Nunito-Regular
      bodyMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
      
      // Labels (Buttons, Captions)
      labelLarge: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
    ).apply(
      bodyColor: AppPalette.black,
      displayColor: AppPalette.black,
      fontFamily: _fontFamily, // Ensures the apply function respects the font
    ),
  );
  
  // ... Repeat for darkTheme
}