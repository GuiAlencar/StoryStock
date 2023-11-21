import 'package:flutter/material.dart';

ThemeData lighMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    background: Colors.white,
    primary: Colors.purple.shade900,
    secondary: Colors.purple.shade700,
    inversePrimary: Colors.purple.shade600,
  ),
   textTheme: ThemeData.light().textTheme.apply(
   bodyColor: Colors.grey.shade500,
   displayColor: Colors.black,
   ));