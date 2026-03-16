import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color(0xFF7C5CBF);
  static const Color primaryLight = Color(0xFF9B7DD4);
  static const Color primaryDark = Color(0xFF5E3FA3);
  static const Color background = Color(0xFFF0EDF8);
  static const Color cardBg = Color(0xFFFFFFFF);
  static const Color imageBg = Color(0xFFF8F5FF);
  static const Color textDark = Color(0xFF2D1F4E);
  static const Color textGrey = Color(0xFF6B6B6B);
  static const Color accent = Color(0xFFFF6B9D);

  static ThemeData get theme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: primary,
        background: background,
      ),
      scaffoldBackgroundColor: background,
      appBarTheme: const AppBarTheme(
        backgroundColor: primary,
        foregroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        titleTextStyle: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w700,
          color: Colors.white,
          letterSpacing: -0.3,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primary,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
          textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
