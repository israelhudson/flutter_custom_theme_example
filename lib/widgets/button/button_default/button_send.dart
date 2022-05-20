import 'package:flutter/material.dart';
import 'package:flutter_custom_theme_example/custom_color_scheme.dart';
import 'package:flutter_custom_theme_example/widgets/button/button_default/button_send_style.dart';

class ButtomDefault extends StatelessWidget {
  final Widget? child;
  final VoidCallback? onPressed;

  const ButtomDefault(
      {super.key, required this.onPressed, required this.child});

  @override
  Widget build(BuildContext context) {
    final buttonTheme = Theme.of(context).extension<ButtonSendStyle>()!;
    final customColors = Theme.of(context).extension<CustomColors>()!;

    return ElevatedButton(
        onPressed: onPressed,
        child: child,
        style: buttonTheme.buttonStyle?.copyWith(
            backgroundColor: MaterialStateProperty.all(customColors.info)));
  }
}
