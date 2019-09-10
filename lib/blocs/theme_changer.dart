import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeChanger with ChangeNotifier {
  bool _isLight;

  ThemeChanger(this._isLight) {
    _loadFromSharedPreferences();
  }

  getTheme() => _isLight ? ThemeData.light() : ThemeData.dark();

  toggleTheme() {
    _saveToSharedPreferences(!_isLight);
  }

  void _loadFromSharedPreferences() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    _isLight = sharedPreferences.getBool('isLight') ?? true;
    notifyListeners();
  }

  void _saveToSharedPreferences(bool isLight) async {
    _isLight = isLight;
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    sharedPreferences.setBool('isLight', isLight);
    notifyListeners();
  }
}
