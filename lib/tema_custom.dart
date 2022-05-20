import 'package:flutter/material.dart';

class TemaCustom extends ThemeExtension<TemaCustom> {
  final Color? cor;
  final BoxDecoration? decoration;
  final TextStyle? textStyle;

  TemaCustom(
      {required this.cor, required this.decoration, required this.textStyle});

  @override
  ThemeExtension<TemaCustom> copyWith(
      {Color? cor, BoxDecoration? decoration, TextStyle? textStyle}) {
    return TemaCustom(
        cor: cor ?? this.cor,
        decoration: decoration ?? this.decoration,
        textStyle: textStyle ?? this.textStyle);
  }

  @override
  ThemeExtension<TemaCustom> lerp(ThemeExtension<TemaCustom>? other, double t) {
    if (other is! TemaCustom) {
      return this;
    }

    return TemaCustom(
        cor: Color.lerp(cor, other.cor, t),
        decoration: BoxDecoration.lerp(decoration, other.decoration, t),
        textStyle: TextStyle.lerp(textStyle, other.textStyle, t));
  }
}
