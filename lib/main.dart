import 'package:flutter/material.dart';
import 'package:whats_app/screens/splash_screen/splashscreen.dart';
import 'package:whats_app/themedata/dark_theme.dart';
import 'package:whats_app/themedata/light_theme.dart';

void main() {
  runApp(MaterialApp(
    title: 'WhatsApp Me',
    theme: lightTheme(),
    darkTheme: darkTheme(),
    themeMode: ThemeMode.system,
    debugShowCheckedModeBanner: false,
    home: const SplashScreen(),
  ));
}
