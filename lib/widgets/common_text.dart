import 'package:flutter/material.dart';
import '../utils/colors.dart';
import '../utils/font.dart';
import '../utils/size.dart';
import '../utils/theme_manager.dart';

class CommonText extends StatefulWidget {
  String text;
  CommonText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  State<CommonText> createState() => _CommonTextState();
}

class _CommonTextState extends State<CommonText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      style: robotoRegularText.copyWith(
        color:ThemeManager().getBlackColor,
        fontSize: width * 0.05,
      ),
    );
  }
}
