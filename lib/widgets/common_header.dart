import 'package:flutter/material.dart';
import '../utils/colors.dart';
import '../utils/font.dart';
import '../utils/size.dart';
import '../utils/theme_manager.dart';
import 'close_button.dart';

class CommonHeader extends StatefulWidget {
  String text;
  CommonHeader({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  State<CommonHeader> createState() => _CommonHeaderState();
}

class _CommonHeaderState extends State<CommonHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ThemeManager().getPrimaryColor,
      padding: EdgeInsets.only(
        bottom: height * 0.008,
        left: width * 0.06,
        right: width * 0.02,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ///-------------------------restaurantName-text--------------------------------///

          Text(
            widget.text,
            style: robotoRegularText.copyWith(
              color: ThemeManager().getBlackColor,
              fontSize: width * 0.09,
            ),
          ),

          ///-------------------------close-button--------------------------------///

          closeButton(),
        ],
      ),
    );
  }
}
