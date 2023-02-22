import 'package:dishplease_app/components/popular_places.dart';
import 'package:dishplease_app/components/review.dart';
import 'package:dishplease_app/components/review_feed.dart';
import 'package:flutter/material.dart';

import '../config/constants.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key, required this.title});
  final String title;
  static const String id = 'Profile';

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final int followerCount = 455;
  final int restaurantsVisited = 30;
  final int restaurantsReviewed = 33;
  final String profilePic =
      "https://static.wikia.nocookie.net/heroes-and-villain/images/c/c6/Profile_-_Remy_%28Ratatouille%29.jpg/revision/latest/scale-to-width-down/350?cb=20200220121148";
  final List<String> favoriteRestaurants = [
    "Restaurant 1",
    "Restaurant 2",
    "Restaurant 3"
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(profilePic),
                          radius: 50.0,
                        ),
                        Text(
                          "Remy",
                          style: TextStyle(
                              fontWeight: Fonts.heavyWeight,
                              fontSize: Fonts.header2,
                              color: AppColors.cPrimaryColor),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 54, 0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "$followerCount",
                                style: TextStyle(
                                    fontWeight: Fonts.mediumWeight,
                                    fontSize: Fonts.header1,
                                    color: AppColors.cPrimaryColor),
                              ),
                              Text("Followers")
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "$restaurantsVisited",
                                style: TextStyle(
                                    fontWeight: Fonts.mediumWeight,
                                    fontSize: Fonts.header1,
                                    color: AppColors.cPrimaryColor),
                              ),
                              Text("Eats")
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "$restaurantsReviewed",
                                style: TextStyle(
                                    fontWeight: Fonts.mediumWeight,
                                    fontSize: Fonts.header1,
                                    color: AppColors.cPrimaryColor),
                              ),
                              Text("Reviews")
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: DefaultTabController(
                length: 2,
                child: SizedBox(
                  height: 600,
                  child: Scaffold(
                    appBar: TabBar(tabs: [
                      Tab(
                        text: 'Reviews',
                      ),
                      Tab(text: 'Lists')
                    ]),
                    body: TabBarView(
                      children: [
                        ReviewFeed(),
                        PopularPlaces(),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
