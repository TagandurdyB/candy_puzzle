import 'package:candy_puzzle/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import '../colors/app_colors.dart';

class StylesSheme {
  final MyColors colors;

  StylesSheme(this.colors);

  TextStyle get light =>
      getTextStyle(fontSize: 16, fontWeight: FontWeight.w300);
  TextStyle get regular =>
      getTextStyle(fontSize: 16, fontWeight: FontWeight.w400);
  TextStyle get medium =>
      getTextStyle(fontSize: 16, fontWeight: FontWeight.w500);
  TextStyle get semibold =>
      getTextStyle(fontSize: 16, fontWeight: FontWeight.w600);
  TextStyle get bold => getTextStyle(fontSize: 16, fontWeight: FontWeight.w700);

  TextStyle getTextStyle({
    required double fontSize,
    FontWeight fontWeight = FontWeight.normal,
    Color? color,
    FontWeight? weight,
    double? letterSpacing,
    double? height,
  }) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: weight ?? fontWeight,
      color: color ?? Colors.white,
      letterSpacing: letterSpacing,
      fontFamily: FontFamily.fredoka,
    );
  }
}
