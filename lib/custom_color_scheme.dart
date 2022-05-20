import 'package:flutter/material.dart';

@immutable
class CustomColors extends ThemeExtension<CustomColors> {
  const CustomColors({
    required this.success,
    required this.info,
    required this.warning,
    required this.danger,
  });

  final Color? success;
  final Color? info;
  final Color? warning;
  final Color? danger;

  @override
  CustomColors copyWith({
    Color? success,
    Color? info,
    Color? warning,
    Color? danger,
  }) {
    return CustomColors(
      success: success ?? this.success,
      info: info ?? this.info,
      warning: warning ?? this.warning,
      danger: danger ?? this.danger,
    );
  }

  // Controls how the properties change on theme changes
  @override
  CustomColors lerp(ThemeExtension<CustomColors>? other, double t) {
    if (other is! CustomColors) {
      return this;
    }
    return CustomColors(
      success: Color.lerp(success, other.success, t),
      info: Color.lerp(info, other.info, t),
      warning: Color.lerp(warning, other.warning, t),
      danger: Color.lerp(danger, other.danger, t),
    );
  }

  @override
  String toString() => 'CustomColors('
      'success: $success, info: $info, warning: $info, danger: $danger'
      ')';

  // the light theme
  static const defaultColors = CustomColors(
    success: Color(0xff28a745),
    info: Color.fromARGB(255, 228, 100, 15),
    warning: Color(0xffffc107),
    danger: Color(0xffdc3545),
  );

  // the dark theme
  static const darkColors = CustomColors(
    success: Color(0xff00bc8c),
    info: Color(0xff17a2b8),
    warning: Color.fromARGB(255, 146, 125, 91),
    danger: Color(0xffe74c3c),
  );
}
