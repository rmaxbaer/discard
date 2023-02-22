import 'package:flutter/material.dart';

class AppColors {
  static Color get cWhite => const Color(0xFFFFFFFF);
  static Color get cBlackish => const Color(0xFF121212);
  static Color get cPrimaryColor => const Color(0xFFFFC690);
  static Color get cSecondaryColor => const Color(0xFFFFA149);
  static Color get cWarningText => const Color(0xFFEF3125);
  static Color get cPrimaryColorBorder => const Color(0xFFFFA450);
  static Color get cListItemBorder => const Color(0xFFCCCCCC);
  static Color get cLightGray => const Color(0xFFD9D9D9);
  static Color get cTextInputGray => const Color(0xFFD9D9D9);
}

class Fonts {
  static double get header1 => 32.0;
  static double get header2 => 22.0;
  static double get nameText => 20.0;
  static double get subtitle => 16.0;
  static double get smallText => 13.0;
  static double get smallestText => 10.0;
  static FontWeight get lightestWeight => FontWeight.w300;
  static FontWeight get lightWeight => FontWeight.w400;
  static FontWeight get mediumWeight => FontWeight.w600;
  static FontWeight get heavyWeight => FontWeight.w700;
  static String get textFamily => 'Open Sans';
}

class Spacings {
  static double get defaultBodyPadding => 16.0;
}
