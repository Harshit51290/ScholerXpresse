// theme_provider.dart
import 'package:flutter/material.dart';
import 'package:your_app_name/utils/theme.dart';

class ThemeProvider with ChangeNotifier {
  bool _isDarkTheme = false;

  bool get isDarkTheme => _isDarkTheme;

  ThemeData getTheme() {
    return _isDarkTheme ? AppTheme.darkTheme : AppTheme.lightTheme;
  }

  void toggleTheme() {
    _isDarkTheme = !_isDarkTheme;
    notifyListeners();
  }
}
