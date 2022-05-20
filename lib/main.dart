import 'package:flutter/material.dart';
import 'package:flutter_custom_theme_example/theme_app/theme_dark/theme_dark.dart';
import 'package:flutter_custom_theme_example/theme_app/theme_default/theme_default.dart';
import 'package:flutter_custom_theme_example/theme_app/theme_store.dart';

import 'home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    final themeStore = ThemeStore();
    return AnimatedBuilder(
        animation: themeStore,
        builder: (context, _) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: themeStore.isDark ? themeDefault : themeDark,
            home: HomePage(toggleTheme: themeStore.changeTheme),
          );
        });
  }
}
