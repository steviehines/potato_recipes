import 'package:flutter/material.dart';
import 'package:potato_foods/components/constants.dart';

class AppTheme {
  static ThemeData light = lightTheme;
  static ThemeData dark = darkTheme;
}

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: ConstAnts.nearlyWhite,
  backgroundColor: ConstAnts.nearlyWhite,
  highlightColor: Colors.transparent,
  splashColor: Colors.transparent,
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: ConstAnts.nearlyWhite,
    unselectedItemColor: ConstAnts.nearlyBlack,
    selectedItemColor: ConstAnts.medicalGreen,
    elevation: 0,
  ),
  appBarTheme: const AppBarTheme(
    color: ConstAnts.nearlyWhite,
    elevation: 0,
    toolbarTextStyle: TextStyle(
      color: ConstAnts.nearlyBlack,
      fontSize: 20,
    ),
    titleTextStyle: TextStyle(
      color: ConstAnts.nearlyBlack,
      fontSize: 20,
    ),
  ),
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: ConstAnts.nearlyBlack,
  backgroundColor: ConstAnts.nearlyBlack,
  highlightColor: Colors.transparent,
  splashColor: Colors.transparent,
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: ConstAnts.nearlyBlack,
    unselectedItemColor: ConstAnts.nearlyWhite,
    selectedItemColor: ConstAnts.medicalGreen,
    elevation: 0,
  ),
  appBarTheme: const AppBarTheme(
    color: ConstAnts.nearlyBlack,
    elevation: 0,
    toolbarTextStyle: TextStyle(
      color: ConstAnts.nearlyWhite,
      fontSize: 20,
    ),
    titleTextStyle: TextStyle(
      color: ConstAnts.nearlyWhite,
      fontSize: 20,
    ),
  ),
);
