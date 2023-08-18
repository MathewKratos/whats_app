import 'package:flutter/material.dart';

ThemeData lightTheme() {
  final ThemeData base = ThemeData.dark();

  return base.copyWith(
      backgroundColor: Colors.white, scaffoldBackgroundColor: Colors.white);
}
