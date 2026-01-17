import 'package:flutter/material.dart';

// -----------------------------------------------------------------------------
// Extension on BuildContext
// -----------------------------------------------------------------------------
// This allows you to access styles directly like: context.titleLarge
// -----------------------------------------------------------------------------
extension TypographyUtils on BuildContext {
  /// Quick access to the app's TextTheme
  TextTheme get textTheme => Theme.of(this).textTheme;

  /// Quick access to the app's ColorScheme
  ColorScheme get colors => Theme.of(this).colorScheme;

  /// Display Styles (Large, flashy text)
  TextStyle? get displayLarge => textTheme.displayLarge;
  TextStyle? get displayMedium => textTheme.displayMedium;
  TextStyle? get displaySmall => textTheme.displaySmall;

  /// Headline Styles (Section headers)
  TextStyle? get headlineLarge => textTheme.headlineLarge;
  TextStyle? get headlineMedium => textTheme.headlineMedium;
  TextStyle? get headlineSmall => textTheme.headlineSmall;

  /// Title Styles (Card titles, AppBar titles)
  TextStyle? get titleLarge => textTheme.titleLarge;
  TextStyle? get titleMedium => textTheme.titleMedium;
  TextStyle? get titleSmall => textTheme.titleSmall;

  /// Body Styles (Paragraphs, long text)
  TextStyle? get bodyLarge => textTheme.bodyLarge;
  TextStyle? get bodyMedium => textTheme.bodyMedium;
  TextStyle? get bodySmall => textTheme.bodySmall;

  /// Label Styles (Buttons, Captions, Inputs)
  TextStyle? get labelLarge => textTheme.labelLarge;
  TextStyle? get labelMedium => textTheme.labelMedium;
  TextStyle? get labelSmall => textTheme.labelSmall;
}

// -----------------------------------------------------------------------------
// Extension on TextStyle
// -----------------------------------------------------------------------------
// This allows you to modify styles fluently like: .bold.size(20).setColor(...)
// -----------------------------------------------------------------------------
extension TextStyleHelpers on TextStyle {
  // --- Font Weights ---
  TextStyle get thin => copyWith(fontWeight: FontWeight.w100);
  TextStyle get extraLight => copyWith(fontWeight: FontWeight.w200);
  TextStyle get light => copyWith(fontWeight: FontWeight.w300);
  TextStyle get regular => copyWith(fontWeight: FontWeight.w400);
  TextStyle get medium => copyWith(fontWeight: FontWeight.w500);
  TextStyle get semiBold => copyWith(fontWeight: FontWeight.w600);
  TextStyle get bold => copyWith(fontWeight: FontWeight.w700);
  TextStyle get extraBold => copyWith(fontWeight: FontWeight.w800);
  TextStyle get black => copyWith(fontWeight: FontWeight.w900);

  // --- Font Styles ---
  TextStyle get italic => copyWith(fontStyle: FontStyle.italic);
  TextStyle get underline => copyWith(decoration: TextDecoration.underline);

  // --- Dynamic Modifications ---
  
  /// Override the font size
  TextStyle size(double size) => copyWith(fontSize: size);

  /// Override the font weight
  TextStyle weight(FontWeight fontWeight) => copyWith(fontWeight: fontWeight);

  /// Override the text color
  TextStyle setColor(Color color) => copyWith(color: color);

  /// Override the line height (relative to font size)
  TextStyle height(double height) => copyWith(height: height);

  /// Override the letter spacing
  TextStyle spacing(double spacing) => copyWith(letterSpacing: spacing);
}