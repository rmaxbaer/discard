import 'package:flutter/material.dart';

import '../config/constants.dart';
import '../components/review.dart';

class ReviewFeed extends StatelessWidget {
  const ReviewFeed({
    Key? key,
  }) : super(key: key);

  static List<Map> reviewObjects = [
    {
      'name': 'Emile',
      'location': 'Provo, UT',
      'profilePic':
          'https://discourse.disneyheroesgame.com/uploads/default/original/3X/b/3/b338bca3bde115ed2c2f409f69866b237225dc0c.jpeg',
      'pics': [
        'https://www.tacobell.com/medias/blog-2019-new-menu-header.jpg?context=bWFzdGVyfGltYWdlc3wxNjYyNzd8aW1hZ2UvanBlZ3xpbWFnZXMvaDFhL2g5OC84OTI4NTEyMTE0NzE4LmpwZ3xjMjA5YzZjNTQyMmM0MWM1ZWE5N2Q1OGQ0NDJjYWVkMzdiNTE0MjMyMjRhMzhmMTZjNGEwYTc4YmMwOGYwOWYx',
        'https://people.com/thmb/pvpLqMxk3_x8Qgfva3vIHMWQtAs=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():focal(999x0:1001x2)/5-Cheesy-Jalapencc83o-Nachos-Box--2000-79ce0e1aa2a84a84b16bb68ae69618b6.jpg',
      ],
      'text':
          'Best service ever! My burrito rocks. Hispanic manager? Whoever was super nice and had great people skills.',
    },
    {
      'name': 'Remy',
      'location': 'Orem, UT',
      'profilePic':
          'https://discourse.disneyheroesgame.com/uploads/default/original/3X/b/3/b338bca3bde115ed2c2f409f69866b237225dc0c.jpeg',
      'pics': [
        'https://www.tacobell.com/medias/blog-2019-new-menu-header.jpg?context=bWFzdGVyfGltYWdlc3wxNjYyNzd8aW1hZ2UvanBlZ3xpbWFnZXMvaDFhL2g5OC84OTI4NTEyMTE0NzE4LmpwZ3xjMjA5YzZjNTQyMmM0MWM1ZWE5N2Q1OGQ0NDJjYWVkMzdiNTE0MjMyMjRhMzhmMTZjNGEwYTc4YmMwOGYwOWYx',
        'https://people.com/thmb/pvpLqMxk3_x8Qgfva3vIHMWQtAs=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():focal(999x0:1001x2)/5-Cheesy-Jalapencc83o-Nachos-Box--2000-79ce0e1aa2a84a84b16bb68ae69618b6.jpg',
      ],
      'text':
          'Best service ever! My burrito rocks. Hispanic manager? Whoever was super nice and had great people skills.',
    },
    {
      'name': 'Mason',
      'location': 'Los Angeles, CA',
      'profilePic':
          'https://discourse.disneyheroesgame.com/uploads/default/original/3X/b/3/b338bca3bde115ed2c2f409f69866b237225dc0c.jpeg',
      'pics': [
        'https://www.tacobell.com/medias/blog-2019-new-menu-header.jpg?context=bWFzdGVyfGltYWdlc3wxNjYyNzd8aW1hZ2UvanBlZ3xpbWFnZXMvaDFhL2g5OC84OTI4NTEyMTE0NzE4LmpwZ3xjMjA5YzZjNTQyMmM0MWM1ZWE5N2Q1OGQ0NDJjYWVkMzdiNTE0MjMyMjRhMzhmMTZjNGEwYTc4YmMwOGYwOWYx',
        'https://people.com/thmb/pvpLqMxk3_x8Qgfva3vIHMWQtAs=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():focal(999x0:1001x2)/5-Cheesy-Jalapencc83o-Nachos-Box--2000-79ce0e1aa2a84a84b16bb68ae69618b6.jpg',
      ],
      'text':
          'Best service ever! My burrito rocks. Hispanic manager? Whoever was super nice and had great people skills.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Recent Reviews',
          style: TextStyle(
            fontWeight: Fonts.heavyWeight,
            fontSize: Fonts.header1,
            color: AppColors.cPrimaryColor,
          ),
        ),
        const Divider(
          thickness: 2.0,
        ),
        // Review(),
        SizedBox(
          height: 300.0,
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            controller: ScrollController(),
            itemCount: reviewObjects.length,
            itemBuilder: (BuildContext context, int index) {
              return Review(reviewObjects[index]);
            },
          ),
        ),
      ],
    );
  }
}
