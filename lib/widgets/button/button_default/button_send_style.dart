import 'package:flutter/material.dart';

class ButtonSendStyle extends ThemeExtension<ButtonSendStyle> {
  final ButtonStyle? buttonStyle;

  ButtonSendStyle({required this.buttonStyle});

  @override
  ThemeExtension<ButtonSendStyle> copyWith({ButtonStyle? buttonStyle}) {
    return ButtonSendStyle(buttonStyle: buttonStyle ?? this.buttonStyle);
  }

  @override
  ThemeExtension<ButtonSendStyle> lerp(
      ThemeExtension<ButtonSendStyle>? other, double t) {
    if (other is! ButtonSendStyle) {
      return this;
    }

    return ButtonSendStyle(
        buttonStyle: ButtonStyle.lerp(buttonStyle, other.buttonStyle, t));
  }

  static ButtonSendStyle buttonSendDark = ButtonSendStyle(
    buttonStyle: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.red),
        padding: MaterialStateProperty.all(const EdgeInsets.all(50)),
        textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 30))),
  );

  static ButtonSendStyle buttonSendDefault = ButtonSendStyle(
    buttonStyle: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.red),
        padding: MaterialStateProperty.all(const EdgeInsets.all(50)),
        textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 30))),
  );
}
