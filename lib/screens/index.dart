import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:dishplease_app/components/home_page_header.dart';
import 'package:dishplease_app/components/review.dart';
import 'package:dishplease_app/screens/dish_list.dart';
import 'package:dishplease_app/screens/lists.dart';
import 'package:dishplease_app/screens/home.dart';
import 'package:dishplease_app/screens/profile.dart';
import 'package:dishplease_app/screens/restaurant.dart';
import 'package:dishplease_app/screens/ReviewCreation/enter_restaurant_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Index extends StatefulWidget {
  const Index({super.key});

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  List pages = [
    const HomePage(title: 'Home'),
    EnterRestaurantPage(),
    const RestaurantPage(
      restaurantName: 'Restaurant Name',
    ),
    const ProfilePage(title: 'Home'),
    const DishListScreen(
      title: 'DishList',
    ),
    const Lists(title: 'Lists'),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              margin: EdgeInsets.all(0.0),
              padding: EdgeInsets.all(0.0),
              child: HomePageHeader(padding: 0.0, picRadius: 20.0),
            ),
            ListTile(
              title: const Text('Dish List'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DishListScreen(title: 'DishList'),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('Lists'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Lists(title: 'Lists'),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('New Review'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EnterRestaurantPage(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('Sign Out'),
              onTap: () async {
                try {
                  await Amplify.Auth.signOut();
                } on AuthException catch (e) {
                  if (kDebugMode) {
                    print(e.message);
                  }
                }
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Review'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: currentIndex,
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.grey,
        onTap: (int index) {
          setState(
            () {
              currentIndex = index;
            },
          );
        },
      ),
    );
  }
}
