import 'package:flutter/material.dart';

class ApplicationThemeManager {
  static ThemeData themeData = ThemeData(
    primaryColor: const Color(0xFF004182),
    scaffoldBackgroundColor: Colors.transparent,
    useMaterial3: false,
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontSize: 20,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w500,
        color: Color(0xff06004F),
      ),
      bodyLarge: TextStyle(
        fontSize: 18,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w500,
        color: Color(0xff06004F),
      ),
      bodySmall: TextStyle(
        fontSize: 14,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w400,
        color: Color(0xff06004F),
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
