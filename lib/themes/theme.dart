import 'package:flutter/material.dart';

ThemeData ligthMode = ThemeData(
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xff017561),
    titleTextStyle: TextStyle(
      color: Color(0xff017561),
      fontSize: 20,
    ),
  ),
  scaffoldBackgroundColor: Colors.white,
  colorScheme: ColorScheme.fromSeed(
    primary: Colors.black54,
    secondary: const Color(0xff017561),
    tertiary: Colors.white,
    seedColor: const Color(0xff25D366),
  ),
  fontFamily: "Roboto",
  useMaterial3: true,
);

ThemeData darkMode = ThemeData(
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xff202C33),
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 20,
    ),
  ),
  scaffoldBackgroundColor: const Color(0xff111B21),
  colorScheme: ColorScheme.fromSeed(
    primary: Colors.white,
    secondary: const Color(0xff017561),
    tertiary: Colors.white,
    seedColor: const Color(0xff25D366),
  ),
  fontFamily: "Roboto",
  useMaterial3: true,
);
