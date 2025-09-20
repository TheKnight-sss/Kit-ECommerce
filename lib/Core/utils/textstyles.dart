import 'package:flutter/material.dart';
import 'package:kit/Core/utils/appcolors.dart';

class TextStyles {
  static TextStyle title({FontWeight? fontWeight, double? fontSize}) {
    return TextStyle(
      fontSize: fontSize ??  20,
      fontWeight: fontWeight ?? FontWeight.w500,
      color: Colors.black,
    );
  }

  static TextStyle smallText({Color? color, FontWeight? fontWeight, double? fontSize}) {
    return TextStyle(fontSize: fontSize ?? 16, fontWeight: fontWeight ?? FontWeight.w400, color: color ?? Colors.grey);
  }

  static TextStyle bodyText({Color? color, FontWeight? fontWeight}) {
    return TextStyle(
      fontSize: 16,
      fontWeight: fontWeight ?? FontWeight.w500,
      color: color ?? Colors.black,
    );
  }

  static TextStyle priceText({Color? color, FontWeight? fontWeight}) {
    return TextStyle(
      fontSize: 16,
      fontWeight: fontWeight ?? FontWeight.w400,
      color: color ?? AppColors.textColor,
    );
  }
}
