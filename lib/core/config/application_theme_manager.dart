import 'package:flutter/material.dart';

class ApplicationThemeManager {
  static ThemeData themeData = ThemeData(
    primaryColor: const Color(0xFF004182),
    scaffoldBackgroundColor: Colors.transparent,
    useMaterial3: false,
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontSize: 24,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
      bodyLarge: TextStyle(
        fontSize: 20,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
      bodySmall: TextStyle(
        fontSize: 16,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w300,
        color: Colors.white,
      ),
      bodyMedium: TextStyle(
        fontSize: 18,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      backgroundColor: Color(0xFF004182),
      selectedIconTheme: IconThemeData(
        color: Colors.white,
        size: 38,
      ),
      unselectedIconTheme: IconThemeData(
        color: Color(0xffC8C9CB),
        size: 30,
      ),
    ),
  );
}
