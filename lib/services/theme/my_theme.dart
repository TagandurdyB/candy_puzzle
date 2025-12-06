import 'package:candy_puzzle/gen/fonts.gen.dart';
import 'package:candy_puzzle/services/packages/device_service.dart';
import 'package:flutter/material.dart';

import 'colors/app_colors.dart';

class MyTheme {
  static final MyTheme _instance = MyTheme._internal();
  MyTheme._internal();
  factory MyTheme() => _instance;

  late ThemeData light = theme(AppColors(), Brightness.light);
  late ThemeData dark = theme(AppColors(), Brightness.dark);

  InputDecorationTheme inputTheme(
    MyColors colors, {
    TextStyle? labelStyle,
    double radius = 16,
    bool useBorderSide = false,
    Color? fillColor,
  }) {
    return InputDecorationTheme(
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(radius)),
        borderSide: useBorderSide
            ? BorderSide(color: colors.primary)
            : const BorderSide(),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(radius)),
        borderSide: useBorderSide
            ? BorderSide(color: colors.primary)
            : const BorderSide(),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(radius)),
        borderSide: useBorderSide
            ? BorderSide(color: colors.danger)
            : const BorderSide(),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(radius)),
        borderSide: useBorderSide
            ? BorderSide(color: colors.danger)
            : const BorderSide(),
      ),
      fillColor: fillColor ?? colors.bg1,
      filled: true,
      labelStyle: labelStyle,
    );
  }

  ThemeData theme(MyColors colors, Brightness brightness) {
    Brightness statusBarBR = Brightness.light;
    if (DeviceService().platform.isAndroid && statusBarBR == brightness) {
      statusBarBR = Brightness.dark;
    }
    return ThemeData(
      fontFamily: FontFamily.fredoka,
      useMaterial3: true,
      pageTransitionsTheme: const PageTransitionsTheme(
        builders: {
          TargetPlatform.android: CupertinoPageTransitionsBuilder(),
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        },
      ),
      brightness: brightness,
      inputDecorationTheme: inputTheme(colors),
    );
  }
}
