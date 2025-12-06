import 'package:flutter/material.dart';
import 'style_scheme.dart';

class Texts {
  StylesSheme style;
  Texts(this.style);

  Widget lightText(
    String text, {
    Color? col,
    TextAlign? align,
    int? maxLines,
    double? size,
    double? strokeWidth,
    TextOverflow overflow = TextOverflow.ellipsis,
  }) => _build(
    text,
    style.light,
    col: col,
    align: align,
    maxLines: maxLines,
    size: size,
    strokeWidth: strokeWidth,
    overflow: overflow,
  );

  Widget regularText(
    String text, {
    Color? col,
    TextAlign? align,
    int? maxLines,
    double? size,
    double? strokeWidth,
    TextOverflow overflow = TextOverflow.ellipsis,
  }) => _build(
    text,
    style.regular,
    col: col,
    align: align,
    maxLines: maxLines,
    size: size,
    strokeWidth: strokeWidth,
    overflow: overflow,
  );

  Widget mediumText(
    String text, {
    Color? col,
    TextAlign? align,
    int? maxLines,
    double? size,
    double? strokeWidth,
    TextOverflow overflow = TextOverflow.ellipsis,
  }) => _build(
    text,
    style.medium,
    col: col,
    align: align,
    maxLines: maxLines,
    size: size,
    strokeWidth: strokeWidth,
    overflow: overflow,
  );

  Widget semiboldText(
    String text, {
    Color? col,
    TextAlign? align,
    int? maxLines,
    double? size,
    double? strokeWidth,
    TextOverflow overflow = TextOverflow.ellipsis,
  }) => _build(
    text,
    style.semibold,
    col: col,
    align: align,
    maxLines: maxLines,
    size: size,
    strokeWidth: strokeWidth,
    overflow: overflow,
  );

  Widget boldText(
    String text, {
    Color? col,
    TextAlign? align,
    int? maxLines,
    double? size,
    double? strokeWidth,
    TextOverflow overflow = TextOverflow.ellipsis,
  }) => _build(
    text,
    style.bold,
    col: col,
    align: align,
    maxLines: maxLines,
    size: size,
    strokeWidth: strokeWidth,
    overflow: overflow,
  );

  Widget _build(
    String text,
    TextStyle style, {
    Color? col,
    TextAlign? align,
    int? maxLines,
    double? size,
    double? strokeWidth,
    TextOverflow overflow = TextOverflow.ellipsis,
  }) {
    final fillColor = col ?? style.color;

    // ---- STROKE + FILL ----
    if (strokeWidth != null) {
      return Stack(
        children: [
          // Stroke
          Text(
            text,
            textAlign: align,
            maxLines: maxLines,
            overflow: overflow,
            style: style.copyWith(
              fontSize: size ?? style.fontSize,
              foreground: Paint()
                ..style = PaintingStyle.stroke
                ..strokeWidth = strokeWidth
                ..color = Colors.black,
            ),
          ),
          // Fill
          Text(
            text,
            textAlign: align,
            maxLines: maxLines,
            overflow: overflow,
            style: style.copyWith(
              fontSize: size ?? style.fontSize,
              color: fillColor,
            ),
          ),
        ],
      );
    }

    // ---- NORMAL TEXT ----
    return Text(
      text,
      textAlign: align,
      maxLines: maxLines,
      overflow: overflow,
      style: style.copyWith(fontSize: size ?? style.fontSize, color: fillColor),
    );
  }
}
