import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static final _fontHeading = GoogleFonts.titilliumWeb(fontWeight: FontWeight.bold);

  static final textTheme = GoogleFonts.sourceSansProTextTheme().copyWith(
    titleLarge: _fontHeading,
    titleMedium: _fontHeading,
    titleSmall: _fontHeading,
    headlineLarge: _fontHeading,
    headlineMedium: _fontHeading,
    headlineSmall: _fontHeading,
  );

  static const primarySwatch = Colors.green;

  static ButtonThemeData buttonTheme(ThemeData theme) =>
      theme.buttonTheme.copyWith(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)));

  static ElevatedButtonThemeData elevatedButtonTheme(ThemeData theme) => ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))));
}
