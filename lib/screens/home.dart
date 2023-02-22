import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:dishplease_app/components/home_page_header.dart';
import 'package:dishplease_app/components/popular_places.dart';

import '../components/log_out.dart';
import '../components/review_feed.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  State<HomePage> createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          HomePageHeader(padding: 16.0, picRadius: 30.0),
          PopularPlaces(),
          ReviewFeed(),
        ],
      ),
    );
  }
}
