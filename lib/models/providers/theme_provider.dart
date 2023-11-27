import 'package:flutter/material.dart';
import 'package:whatsapp_clone/themes/theme.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _themeData = ligthMode;

  ThemeData get themeData => _themeData;

  bool isLigth() => themeData == ligthMode ? true : false;

  void toggleTheme() {
    if (_themeData == ligthMode) {
      _themeData = darkMode;
    } else {
      _themeData = ligthMode;
    }
    notifyListeners();
  }
}
