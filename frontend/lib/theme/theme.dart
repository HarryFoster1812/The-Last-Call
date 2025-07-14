import 'package:flutter/material.dart';
import 'custom_theme_data.dart';

// Custom ThemeData extension for theme-specific colors

final lightTheme = ThemeData(
  shadowColor: Colors.black,
  brightness: Brightness.light,
  scaffoldBackgroundColor: const Color(0xFFF5F7FA),
  colorScheme: const ColorScheme.light(
    primary: Color(0xFF26A69A),
    secondary: Color(0xFF4DB6AC),
    surface: Color(0xFFFFFFFF),
    onPrimary: Color(0xFFFFFFFF),
    onSecondary: Color(0xFFFFFFFF),
    onSurface: Color(0xFF1A1A1A),
  ),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(color: Color(0xFF1A1A1A)),
    headlineLarge: TextStyle(
      color: Color(0xFF1A1A1A),
      fontSize: 32,
      fontWeight: FontWeight.bold,
    ),
  ),
  appBarTheme: AppBarTheme(
    foregroundColor: Color(0xFFFFFFFF),
    titleTextStyle: TextStyle(
      fontWeight: FontWeight.w600,
      color: Colors.black,
      fontSize: 18,
      fontFamily: "Poppins",
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Color(0xFF26A69A),
      foregroundColor: Color(0xFFFFFFFF),
    ),
  ),
  cardTheme: CardThemeData(
    color: Colors.white,
    shape: RoundedRectangleBorder(
      side: BorderSide(
        color: Color(0xFFE4E4E4),
        width: 2,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(Radius.circular(12)),
    ),
  ),
  extensions: const <ThemeExtension<dynamic>>[
    CustomThemeData(
      inactiveHomeCardGradientStart: Color(0xFFEFF6FF),
      inactiveHomeCardGradientEnd: Color(0xFFFAF5FF),
    ),
  ],
);

final darkTheme = ThemeData(
  shadowColor: Colors.white,
  brightness: Brightness.dark,
  scaffoldBackgroundColor: const Color(0xFF121212),
  colorScheme: const ColorScheme.dark(
    primary: Color(0xFF26A69A),
    secondary: Color(0xFF4DB6AC),
    surface: Color(0xFF1E1E1E),
    onPrimary: Colors.white,
    onSecondary: Colors.white,
    onSurface: Color(0xFFE0E0E0),
  ),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(color: Color(0xFFE0E0E0)),
    headlineLarge: TextStyle(
      color: Color(0xFFE0E0E0),
      fontSize: 32,
      fontWeight: FontWeight.bold,
    ),
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: Color(0xFF1E1E1E),
    foregroundColor: Color(0xFFE0E0E0),
    titleTextStyle: TextStyle(
      fontWeight: FontWeight.w600,
      color: Colors.white,
      fontSize: 18,
      fontFamily: "Poppins",
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Color(0xFF26A69A),
      foregroundColor: Colors.white,
    ),
  ),
  cardTheme: CardThemeData(
    color: Colors.transparent,
    shape: RoundedRectangleBorder(
      side: BorderSide(
        color: Color(0xFF444444), // Lighter gray for contrast in dark
        width: 2,
      ),
      borderRadius: BorderRadius.circular(12),
    ),
  ),
  extensions: const <ThemeExtension<dynamic>>[
    CustomThemeData(
      inactiveHomeCardGradientStart: Color(0xFF100900),
      inactiveHomeCardGradientEnd: Color(0xFF050A00),
    ),
  ],
);
