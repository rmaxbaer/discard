import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:dishplease_app/screens/index.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'models/ModelProvider.dart';

import 'amplifyconfiguration.dart';

void main() {
  runApp(const DishPlease(title: 'DishPlease'));
}

class DishPlease extends StatefulWidget {
  const DishPlease({super.key, required this.title});
  final String title;

  @override
  State<DishPlease> createState() => _DishPleaseState();
}

class _DishPleaseState extends State<DishPlease> {
  bool show404 = false;

  @override
  void initState() {
    super.initState();
    _configureAmplify();
  }

  Future<void> _configureAmplify() async {
    final provider = ModelProvider();
    final api = AmplifyAPI();

    try {
      final auth = AmplifyAuthCognito();

      // final dataStorePlugin = AmplifyDataStore(modelProvider: provider);
      await Amplify.addPlugins([api, auth]);
      // await Amplify.addPlugins([dataStorePlugin, api, auth]);
      await Amplify.configure(amplifyconfig);
      if (kDebugMode) {
        print('Successfully configured');
      }
    } on Exception catch (e) {
      if (kDebugMode) {
        print('Error configuring Amplify: $e');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Authenticator(
      initialStep: AuthenticatorStep.signIn,
      child: MaterialApp(
        title: 'DishPlease',
        theme: ThemeData(
          primarySwatch: Colors.orange,
        ),
        builder: Authenticator.builder(),
        home: const Index(),
      ),
    );
  }
}
