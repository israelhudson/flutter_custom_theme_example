import 'package:flutter/material.dart';
import 'package:flutter_custom_theme_example/custom_color_scheme.dart';
import 'package:flutter_custom_theme_example/tema_custom.dart';
import 'package:flutter_custom_theme_example/widgets/button/button_default/button_send_style.dart';

class ThemeDarkExtensions {
  static List<ThemeExtension<dynamic>> extensions() {
    return <ThemeExtension<dynamic>>[
      CustomColors.darkColors,
      ButtonSendStyle.buttonSendDark,
      TemaCustom(
          cor: Colors.amber,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              color: Colors.brown),
          textStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22))
    ];
  }
}
