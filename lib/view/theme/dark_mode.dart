import 'package:flutter/material.dart';

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    background: Colors.black,
    primary: Colors.purple.shade900,
    secondary: Colors.purple.shade700,
    inversePrimary: Colors.purple.shade600,
  ),
   textTheme: ThemeData.light().textTheme.apply(
   bodyColor: Colors.grey.shade500,
   displayColor: Colors.black,
   ));
