import 'package:flutter/material.dart';
import 'package:flutter_custom_theme_example/theme_app/theme_default/theme_default_extensions.dart';

ThemeData get themeDefault {
  return ThemeData.light().copyWith(
    backgroundColor: Colors.white,
    buttonTheme: const ButtonThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(4.0),
        ),
      ),
    ),
    extensions: ThemeDefaultExtensions.extensions(),
  );
}
