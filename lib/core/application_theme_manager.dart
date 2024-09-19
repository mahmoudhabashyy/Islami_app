import 'package:flutter/material.dart';

class ApplicationThemeManager {
  static const Color primaryColor =Color(0xFFB7935F);
  static const Color primaryDarkColor =Color(0xFFFACC1D);
  static ThemeData lightThemeData = ThemeData(
    primaryColor: primaryColor ,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      titleTextStyle: TextStyle(
        fontFamily: "El Messiri",
        fontSize: 30.0,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ),
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor:primaryColor,
      selectedItemColor: Color(0xFF222222),
      selectedIconTheme: IconThemeData(
        size: 35,
        color: Color(0xFF222222),
      ),
      showUnselectedLabels: false,
      unselectedItemColor: Color(0xFFF8F8F8),
      unselectedIconTheme: IconThemeData(
        size: 28,
        color: Color(0xFFF8F8F8),
      ),
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontFamily: "El Messiri",
        fontSize: 30.0,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      bodyLarge: TextStyle(
        fontFamily: "El Messiri",
        fontSize: 25.0,
        color: Colors.black,
        fontWeight: FontWeight.w500,
      ),
      bodyMedium: TextStyle(
        fontFamily: "El Messiri",
        fontSize: 25.0,
        color: Colors.black,
        fontWeight: FontWeight.w400,
      ),
      bodySmall: TextStyle(
        fontFamily: "El Messiri",
        fontSize: 20.0,
        color: Colors.black,
        fontWeight: FontWeight.w400,
      ),
    ),
    dividerTheme: const DividerThemeData(
      space: 10,
      color: primaryColor,
    ),
  );
  static ThemeData darkThemeData = ThemeData(
    primaryColor: primaryColor ,
    primaryColorDark: primaryDarkColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      titleTextStyle: TextStyle(
        fontFamily: "El Messiri",
        fontSize: 30.0,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor:Color(0xFF141A2E),
      selectedItemColor: primaryDarkColor,
      selectedIconTheme: IconThemeData(
        size: 35,
        color: primaryDarkColor,
      ),
      showUnselectedLabels: false,
      unselectedItemColor: Color(0xFFF8F8F8),
      unselectedIconTheme: IconThemeData(
        size: 28,
        color: Color(0xFFF8F8F8),
      ),
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontFamily: "El Messiri",
        fontSize: 30.0,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      bodyLarge: TextStyle(
        fontFamily: "El Messiri",
        fontSize: 25.0,
        color: Colors.white,
        fontWeight: FontWeight.w500,
      ),
      bodyMedium: TextStyle(
        fontFamily: "El Messiri",
        fontSize: 25.0,
        color: Colors.white,
        fontWeight: FontWeight.w400,
      ),
      bodySmall: TextStyle(
        fontFamily: "El Messiri",
        fontSize: 20.0,
        color: Colors.white,
        fontWeight: FontWeight.w400,
      ),
    ),
    dividerTheme: const DividerThemeData(
      space: 10,
      color: primaryDarkColor,
    ),
  );
}