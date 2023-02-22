import 'package:flutter/material.dart';

import '../config/constants.dart' show Spacings;

class ReviewPage extends StatefulWidget {
  const ReviewPage({super.key, required this.title});
  final String title;

  @override
  State<ReviewPage> createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(Spacings.defaultBodyPadding),
        child: const Center(
          child: Text('Review Page'),
        ),
      ),
    );
  }
}
