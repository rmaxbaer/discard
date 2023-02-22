import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../config/constants.dart';

class LogOutButton extends StatelessWidget {
  const LogOutButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        try {
          await Amplify.Auth.signOut();
        } on AuthException catch (e) {
          if (kDebugMode) {
            print(e.message);
          }
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            const Icon(
              PhosphorIcons.signOut,
              color: Colors.white,
              size: 48.0,
            ),
            Text(
              'Log Out',
              style: TextStyle(
                fontSize: 24.0,
                color: AppColors.cWhite,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
