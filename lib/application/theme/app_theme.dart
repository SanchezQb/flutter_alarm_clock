import 'package:flutter/material.dart';

final visualDensity = VisualDensity.adaptivePlatformDensity;
final dark = ThemeData(
  primaryColor: Colors.black,
  scaffoldBackgroundColor: Colors.black,
  colorScheme: const ColorScheme.dark(),
  visualDensity: visualDensity,
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Colors.black,
  ),
);

final light = ThemeData(
  primaryColor: Colors.white,
  scaffoldBackgroundColor: Colors.white,
  colorScheme: const ColorScheme.light(),
  visualDensity: visualDensity,
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Colors.white,
  ),
);
