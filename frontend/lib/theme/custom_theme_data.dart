import 'package:flutter/material.dart';

class CustomThemeData extends ThemeExtension<CustomThemeData> {
  const CustomThemeData({
    required this.inactiveHomeCardGradientStart,
    required this.inactiveHomeCardGradientEnd,
  });

  final Color inactiveHomeCardGradientStart;
  final Color inactiveHomeCardGradientEnd;

  @override
  CustomThemeData copyWith({
    Color? inactiveHomeCardGradientStart,
    Color? inactiveHomeCardGradientEnd,
  }) {
    return CustomThemeData(
      inactiveHomeCardGradientStart:
          inactiveHomeCardGradientStart ?? this.inactiveHomeCardGradientStart,
      inactiveHomeCardGradientEnd:
          inactiveHomeCardGradientEnd ?? this.inactiveHomeCardGradientEnd,
    );
  }

  @override
  CustomThemeData lerp(ThemeExtension<CustomThemeData>? other, double t) {
    if (other is! CustomThemeData) {
      return this;
    }
    return CustomThemeData(
      inactiveHomeCardGradientStart: Color.lerp(
        inactiveHomeCardGradientStart,
        other.inactiveHomeCardGradientStart,
        t,
      )!,
      inactiveHomeCardGradientEnd: Color.lerp(
        inactiveHomeCardGradientEnd,
        other.inactiveHomeCardGradientEnd,
        t,
      )!,
    );
  }
}
