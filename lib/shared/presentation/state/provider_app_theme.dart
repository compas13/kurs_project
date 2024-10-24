import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/app_color_themes.dart';

class ProviderAppTheme extends ChangeNotifier {
  ColorTheme _colorTheme = AppThemes.lightTheme;

  ColorTheme get colorTheme => _colorTheme;

  ProviderAppTheme() {
    _loadTheme();
  }

  void setColorTheme(ColorTheme colorTheme) {
    _colorTheme = colorTheme;
    _saveTheme();
    notifyListeners();
  }

  Future<void> _saveTheme() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('theme', _colorTheme == AppThemes.darkTheme ? 'dark' : 'light');
  }

  Future<void> _loadTheme() async {
    final prefs = await SharedPreferences.getInstance();
    String? theme = prefs.getString('theme');
    if (theme == 'dark') {
      _colorTheme = AppThemes.darkTheme;
    } else {
      _colorTheme = AppThemes.lightTheme;
    }
    notifyListeners();
  }
}