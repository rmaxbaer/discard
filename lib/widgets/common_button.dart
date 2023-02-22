import 'package:flutter/material.dart';
import '../utils/font.dart';
import '../utils/size.dart';

class CommonButton extends StatefulWidget {
  Color containerColor;
  String text;
  Color textColor;
  CommonButton({
    Key? key,
    required this.containerColor,
    required this.text,
    required this.textColor,
  }) : super(key: key);

  @override
  State<CommonButton> createState() => _CommonButtonState();
}

class _CommonButtonState extends State<CommonButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * 0.41,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: height * 0.012),
      decoration: BoxDecoration(
        color: widget.containerColor,
        borderRadius: BorderRadius.all(
          Radius.circular(width),
        ),
      ),
      child: Text(
        widget.text,
        style: madaRegularText.copyWith(
          color: widget.textColor,
          fontSize: width * 0.05,
        ),
      ),
    );
  }
}
