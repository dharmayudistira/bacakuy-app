import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

final Color primaryColor = Color(0xFFFFFFFF);
final Color secondaryColor = Color(0xFF6B38FB);
final Color darkPrimaryColor = Color(0xFF000000);
final Color darkSecondaryColor = Color(0xff64ffda);

ThemeData lightTheme = ThemeData(
  primaryColor: primaryColor,
  accentColor: secondaryColor,
  scaffoldBackgroundColor: Colors.white,
  visualDensity: VisualDensity.adaptivePlatformDensity,

  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    selectedItemColor: secondaryColor,
    unselectedItemColor: Colors.grey,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary: secondaryColor,
      textStyle: TextStyle(),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(0),
        ),
      ),
    ),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black)
    ),
    labelStyle: TextStyle(
        color: Colors.black,
    ),
  ),
);

ThemeData darkTheme = ThemeData.dark().copyWith(
  primaryColor: darkPrimaryColor,
  accentColor: darkSecondaryColor,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    selectedItemColor: darkSecondaryColor,
    unselectedItemColor: Colors.white,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary: darkSecondaryColor,
      textStyle: TextStyle(),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(0),
        ),
      ),
    ),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white)
    ),
    labelStyle: TextStyle(
        color: Colors.white,
    ),
  ),
);