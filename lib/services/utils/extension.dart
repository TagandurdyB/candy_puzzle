import 'package:candy_puzzle/services/theme/colors/app_colors.dart';
import 'package:candy_puzzle/services/theme/text/app_texts.dart';
import 'package:candy_puzzle/services/theme/text/style_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

var _tt = Texts(StylesSheme(AppColors()));

extension CC on BuildContext {
  Texts get t {
    return Theme.of(this).brightness == Brightness.dark ? _tt : _tt;
  }

  MyColors get colors {
    return Theme.of(this).brightness == Brightness.dark
        ? _tt.style.colors
        : _tt.style.colors;
  }

  bool get isDark {
    return Theme.of(this).brightness == Brightness.dark;
  }

  void closeKeyboar() {
    WidgetsBinding.instance.focusManager.primaryFocus?.unfocus();
  }

  Future<void> copyToClipBoard(String text) async {
    await Clipboard.setData(ClipboardData(text: text));
    // ToastService.message('Copied to clipboard', true, col: Colors.blue);
  }
}

extension DF on DateTime {
  static String _twoDigit(int n) {
    return n.toString().padLeft(2, "0");
  }

  String calendar({String slicer = '.'}) {
    return "${_twoDigit(day)}$slicer${_twoDigit(month)}$slicer$year";
  }

  String calendarYmd({String slicer = '-'}) {
    return "$year$slicer${_twoDigit(month)}$slicer${_twoDigit(day)}";
  }

  String calendarClock({String slicer = '.'}) {
    return "${_twoDigit(day)}$slicer${_twoDigit(month)}$slicer$year ${_twoDigit(hour)}:${_twoDigit(minute)}";
  }
}



extension DuF on Duration{
  String clockFormat( ) {
    final minutes = inMinutes.remainder(60).toString().padLeft(2, '0');
    final seconds = inSeconds.remainder(60).toString().padLeft(2, '0');
    return '$minutes:$seconds';
  }

}