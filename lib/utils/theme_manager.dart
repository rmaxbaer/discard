import 'package:flutter/material.dart';

import 'colors.dart';

class ThemeManager {
  static final ThemeManager _singleton = ThemeManager._internal();

  factory ThemeManager() {
    return _singleton;
  }

  ThemeManager._internal();

  bool isDark = false;

  bool isDarkTheme() {
    return isDark;
  }

  void setDarkTheme(bool value) {
    isDark = value;
  }

  get getBlackColor => blackColor;
  get getwhiteColor => whiteColor;
  get getPrimaryColor => primaryColor;
  get getsecondaryColor => secondaryColor;
  get getgrayColor => grayColor;
  get getlightGrayColor => lightGrayColor;
  get getredColor => redColor;
  get gettransColor => transColor;
  get getratingIconColor1 => ratingIconColor1;
  get getratingIconColor2 => ratingIconColor2;
  get getratingIconColor3 => ratingIconColor3;
  get getratingIconColor4 => ratingIconColor4;
  get getratingIconColor5 => ratingIconColor5;
  get geticonColor => iconColor;
  get getBottonIconColor => bottonIconColor;
}
