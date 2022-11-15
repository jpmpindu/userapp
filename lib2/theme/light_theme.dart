import 'package:flutter/material.dart';

ThemeData light = ThemeData(
  fontFamily: 'Roboto',
  primaryColor: Color.fromARGB(255, 5, 191, 55),
  secondaryHeaderColor: Color.fromARGB(255, 33, 237, 186),
  disabledColor: Color(0xFFBABFC4),
  backgroundColor: Color(0xFFF3F3F3),
  errorColor: Color.fromARGB(255, 4, 62, 6),
  brightness: Brightness.light,
  hintColor: Color(0xFF9F9F9F),
  cardColor: Colors.white,
  colorScheme: ColorScheme.light(primary: Color.fromARGB(255, 5, 143, 32), secondary: Color(0xFFEF7822)),
  textButtonTheme: TextButtonThemeData(style: TextButton.styleFrom(primary: Color(0xFFEF7822))),
);