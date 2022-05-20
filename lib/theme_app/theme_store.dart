import 'package:flutter/material.dart';

class ThemeStore extends ChangeNotifier {
  bool _isDark = false;

  bool get isDark => _isDark;

  void changeTheme() {
    _isDark = !_isDark;
    print('RESULT $_isDark');
    notifyListeners();
  }
}
