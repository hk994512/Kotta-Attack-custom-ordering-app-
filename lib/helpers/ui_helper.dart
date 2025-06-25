import 'package:flutter/material.dart';

class UIHelpers {
  static Widget appText(
    String text, {
    int color = 0xFF000000,
    double? fontSize,
    FontWeight? fontWeight,
  }) {
    return Text(
      text,
      style: TextStyle(
        color: hexColor(color),
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }

  static Color hexColor(int colorValue) {
    return Color(colorValue);
  }

  static Widget appImage(
    String imagePath, {
    Color? color,
    double? height,
    double? width,
    BoxFit? fit,
  }) {
    return Image.asset(
      imagePath,
      color: color,
      height: height,
      width: width,
      fit: fit,
    );
  }
}
