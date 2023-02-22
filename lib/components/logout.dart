import 'package:flutter/material.dart';

import '../config/constants.dart';

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Log Out',
      style: TextStyle(
        fontSize: 24.0,
        color: AppColors.cWhite,
      ),
    );
  }
}
