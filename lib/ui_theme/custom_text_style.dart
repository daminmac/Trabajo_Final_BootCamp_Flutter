import 'package:flutter/material.dart';
import 'package:mis_recetas/ui_theme/size_app.dart';

class AppTextStyle {
  TextStyle h112;
  TextStyle h114;
  TextStyle h115;
  TextStyle h116;
  TextStyle h122;

  TextStyle h214;
  TextStyle h215;
  TextStyle h224;
  TextStyle h232;
  TextStyle h236;

  AppTextStyle(
      {required this.h112,
      required this.h114,
      required this.h115,
      required this.h116,
      required this.h122,
      required this.h214,
      required this.h215,
      required this.h224,
      required this.h232,
      required this.h236}
    );

  factory AppTextStyle.applyColor(AppTextStyle appTextStyle, Color color) {
    return AppTextStyle(
      h112: appTextStyle.h112.copyWith(fontSize: sizeTextH112, color: color),
      h114: appTextStyle.h114.copyWith(fontSize: sizeTextH114, color: color),
      h115: appTextStyle.h115.copyWith(fontSize: sizeTextH115, color: color),
      h116: appTextStyle.h116.copyWith(fontSize: sizeTextH116, color: color),
      h122: appTextStyle.h122.copyWith(fontSize: sizeTextH122, color: color),
      h214: appTextStyle.h214.copyWith(fontSize: sizeTextH214, color: color),
      h215: appTextStyle.h215.copyWith(fontSize: sizeTextH215, color: color),
      h224: appTextStyle.h224.copyWith(fontSize: sizeTextH224, color: color),
      h232: appTextStyle.h232.copyWith(fontSize: sizeTextH232, color: color),
      h236: appTextStyle.h236.copyWith(fontSize: sizeTextH236, color: color)
    );
  }

  factory AppTextStyle.textStyles() {
    return AppTextStyle(
      h112: _stylePoppins.copyWith(fontSize: sizeTextH112),
      h114: _stylePoppins.copyWith(fontSize: sizeTextH114),
      h115: _stylePoppinsSemiBold.copyWith(fontSize: sizeTextH115),
      h116: _stylePoppinsBold.copyWith(fontSize: sizeTextH116),
      h122: _stylePoppinsSemiBold.copyWith(fontSize: sizeTextH122),
      h214: _styleRobotoCondensed.copyWith(fontSize: sizeTextH214),
      h215: _styleRobotoCondensed.copyWith(fontSize: sizeTextH215),
      h224: _styleRobotoCondensedBold.copyWith(fontSize: sizeTextH224),
      h232: _styleRobotoCondensedBold.copyWith(fontSize: sizeTextH232),
      h236: _styleRobotoCondensedBold.copyWith(fontSize: sizeTextH236)
    );
  }

  static TextStyle get _stylePoppins => const TextStyle(
    fontFamily: "Poppins-Regular",
  );
  static TextStyle get _stylePoppinsSemiBold =>
    const TextStyle(fontFamily: "Poppins-Regular", 
    fontWeight: FontWeight.w600
  );
  static TextStyle get _stylePoppinsBold =>
    const TextStyle(fontFamily: "Poppins-Regular", 
    fontWeight: FontWeight.w700
  );
  static TextStyle get _styleRobotoCondensed => const TextStyle(
    fontFamily: "RobotoCondensed-Regular",
  );
  static TextStyle get _styleRobotoCondensedBold => const TextStyle(
    fontFamily: "RobotoCondensed-Regular", 
    fontWeight: FontWeight.w700
  );
}
