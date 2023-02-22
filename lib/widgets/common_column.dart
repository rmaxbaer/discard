import 'package:flutter/material.dart';
import '../utils/colors.dart';
import '../utils/font.dart';
import '../utils/size.dart';
import '../utils/theme_manager.dart';

class CommonColumn extends StatefulWidget {
  final String icon;
  final String text;
  CommonColumn({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  State<CommonColumn> createState() => _CommonColumnState();
}

class _CommonColumnState extends State<CommonColumn> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.all(width * 0.015),
          height: height * 0.065,
          width: height * 0.065,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: ThemeManager().getwhiteColor,
            border: Border.all(
              color: blackColor,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(width),
            ),
          ),
          child: Image.asset(
            widget.icon,
          ),
        ),
        Text(
          widget.text,
          style: openSansRegularText.copyWith(
            color: ThemeManager().getBlackColor,
            fontSize: width * 0.03,
          ),
        )
      ],
    );
  }
}
