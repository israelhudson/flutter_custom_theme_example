import 'package:flutter/material.dart';
import 'package:flutter_custom_theme_example/tema_custom.dart';

import '../../custom_color_scheme.dart';
import '../../widgets/button/button_default/button_send_style.dart';

ThemeData get themeDark {
  return ThemeData.dark().copyWith(
    buttonTheme: const ButtonThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(4.0),
        ),
      ),
    ),
    extensions: <ThemeExtension<dynamic>>[
      CustomColors.darkColors,
      ButtonSendStyle.buttonSendDark,
      TemaCustom(
          cor: Colors.amber,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              color: Colors.brown),
          textStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22))
    ],
  );
}
