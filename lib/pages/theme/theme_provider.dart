import 'package:flutter/material.dart';
import 'package:todoapp/pages/theme/dark_mode.dart';
import 'package:todoapp/pages/theme/light_mode.dart';

class ThemeProvider extends ChangeNotifier {

  //initially light mode
  ThemeData _themeData = lightMode;

  //get current theme
  ThemeData get themeData => _themeData;

  //is current theme dark mode
  bool get isDarkMode => _themeData == darkMode;

}