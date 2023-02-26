import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DefaultTheme {
  static const primary = Color(0xFFFF8A00);
  static const primaryContainer = Color(0xFFFFB800);
  static const onPrimary = Colors.white;
  static const onBackground = Colors.black;
  static const background = Colors.white;
  static final ThemeData themeData = ThemeData(
    textTheme: TextTheme(
      displayLarge: GoogleFonts.firaSans(
        fontSize: 32,
        fontWeight: FontWeight.w700,
      ),
      displayMedium: GoogleFonts.firaSans(
        fontSize: 30,
        fontWeight: FontWeight.w700,
      ),
      displaySmall: GoogleFonts.firaSans(
        fontSize: 24,
        fontWeight: FontWeight.w700,
      ),
      titleMedium: GoogleFonts.firaSans(
        fontSize: 25,
        fontWeight: FontWeight.w700,
      ),
      titleSmall: GoogleFonts.firaSans(
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
      bodyLarge: GoogleFonts.firaSans(
        fontSize: 17,
        fontWeight: FontWeight.w400,
      ),
      bodyMedium: GoogleFonts.firaSans(
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
      labelSmall: GoogleFonts.firaSans(
        fontSize: 13,
        fontWeight: FontWeight.w600,
      ),
      labelLarge: GoogleFonts.firaSans(
        fontSize: 20,
        fontWeight: FontWeight.w700,
      ),
    ).apply(
      bodyColor: onPrimary,
      displayColor: onPrimary,
    ),
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: primary,
      onPrimary: onPrimary,
      secondary: Colors.white,
      onSecondary: Colors.white,
      error: Colors.white,
      onError: Colors.white,
      background: background,
      onBackground: onBackground,
      surface: Colors.white,
      onSurface: Colors.white,
      primaryContainer: primaryContainer, 
    ),
  );
}
