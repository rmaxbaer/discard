import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:dishplease_app/config/constants.dart';

class RestaurantPage extends StatefulWidget {
  const RestaurantPage({super.key, required this.restaurantName});
  final String restaurantName;

  @override
  State<RestaurantPage> createState() => _RestaurantPageState();
}

class _RestaurantPageState extends State<RestaurantPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.centerStart,
          children: [
            Column(
              children: [
                Container(
                  height: 200.0,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: CachedNetworkImageProvider(
                          'https://voicesofutah.files.wordpress.com/2015/04/hiresbigh_stand.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  height: 300,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 75.0, 0.0, 0.0),
                        child: Text(
                          'Hire\'s Big H',
                          style: TextStyle(
                            fontWeight: Fonts.heavyWeight,
                            fontSize: Fonts.header1,
                            color: AppColors.cPrimaryColor,
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(32.0, 20.0, 32.0, 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Text(
                                  '2K',
                                  style: TextStyle(
                                    fontWeight: Fonts.heavyWeight,
                                    fontSize: Fonts.nameText,
                                    color: AppColors.cPrimaryColor,
                                  ),
                                ),
                                Text(
                                  'Visits',
                                  style: TextStyle(
                                    fontWeight: Fonts.lightWeight,
                                    fontSize: Fonts.smallText,
                                    color: AppColors.cBlackish,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  '4.8',
                                  style: TextStyle(
                                    fontWeight: Fonts.heavyWeight,
                                    fontSize: Fonts.nameText,
                                    color: AppColors.cPrimaryColor,
                                  ),
                                ),
                                Text(
                                  'Rating',
                                  style: TextStyle(
                                    fontWeight: Fonts.lightWeight,
                                    fontSize: Fonts.smallText,
                                    color: AppColors.cBlackish,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  '528',
                                  style: TextStyle(
                                    fontWeight: Fonts.heavyWeight,
                                    fontSize: Fonts.nameText,
                                    color: AppColors.cPrimaryColor,
                                  ),
                                ),
                                Text(
                                  'Recommended',
                                  style: TextStyle(
                                    fontWeight: Fonts.lightWeight,
                                    fontSize: Fonts.smallText,
                                    color: AppColors.cBlackish,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  '200',
                                  style: TextStyle(
                                    fontWeight: Fonts.heavyWeight,
                                    fontSize: Fonts.nameText,
                                    color: AppColors.cPrimaryColor,
                                  ),
                                ),
                                Text(
                                  'Reviews',
                                  style: TextStyle(
                                    fontWeight: Fonts.lightWeight,
                                    fontSize: Fonts.smallText,
                                    color: AppColors.cBlackish,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'Info',
                              style: TextStyle(
                                fontWeight: Fonts.lightWeight,
                                fontSize: Fonts.header2,
                                color: AppColors.cPrimaryColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Text(
                                  'Phone:',
                                  style: TextStyle(
                                    fontWeight: Fonts.lightWeight,
                                    fontSize: Fonts.smallText,
                                    color: AppColors.cBlackish,
                                  ),
                                ),
                                Text(
                                  '801-555-1234',
                                  style: TextStyle(
                                    fontWeight: Fonts.lightWeight,
                                    fontSize: Fonts.smallText,
                                    color: AppColors.cBlackish,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  'Hours:',
                                  style: TextStyle(
                                    fontWeight: Fonts.lightWeight,
                                    fontSize: Fonts.smallText,
                                    color: AppColors.cBlackish,
                                  ),
                                ),
                                Text(
                                  'M-F 11AM-8PM',
                                  style: TextStyle(
                                    fontWeight: Fonts.lightWeight,
                                    fontSize: Fonts.smallText,
                                    color: AppColors.cBlackish,
                                  ),
                                ),
                                Text(
                                  'S 11AM-10PM',
                                  style: TextStyle(
                                    fontWeight: Fonts.lightWeight,
                                    fontSize: Fonts.smallText,
                                    color: AppColors.cBlackish,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  '425 S 700 E,\nSalt Lake City,\nUT 84102',
                                  style: TextStyle(
                                    fontWeight: Fonts.lightWeight,
                                    fontSize: Fonts.smallText,
                                    color: AppColors.cBlackish,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            const Positioned(
              top: 165,
              child: RestaurantButtons(),
            )
          ],
        ),
        const DefaultTabController(
          length: 2,
          child: SizedBox(
            height: 200,
            child: Scaffold(
              appBar: TabBar(tabs: [
                Tab(
                  text: 'Friends',
                ),
                Tab(text: 'Top')
              ]),
              body: TabBarView(
                children: [
                  Icon(Icons.fire_truck_rounded),
                  Icon(Icons.traffic),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

class RestaurantButtons extends StatelessWidget {
  const RestaurantButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: const [
                RestaurantButton(
                  svgPath: 'assets/eaten.svg',
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
                  child: Text('Eaten'),
                ),
              ],
            ),
            Column(
              children: const [
                RestaurantButton(
                  svgPath: 'assets/heart.svg',
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
                  child: Text('Like'),
                ),
              ],
            ),
            Column(
              children: const [
                RestaurantButton(
                  svgPath: 'assets/star.svg',
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
                  child: Text('Review'),
                ),
              ],
            ),
            Column(
              children: const [
                RestaurantButton(
                  svgPath: 'assets/plus.svg',
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
                  child: Text('DishList'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class RestaurantButton extends StatelessWidget {
  const RestaurantButton({Key? key, this.svgPath = '', this.isSelected = false})
      : super(key: key);
  final String svgPath;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        shape: MaterialStateProperty.all(const CircleBorder()),
        padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
        backgroundColor: MaterialStateProperty.resolveWith<Color?>((states) {
          if (isSelected) {
            return AppColors.cPrimaryColor;
          } else {
            return Colors.white;
          }
        }), // <-- Button color
        overlayColor: MaterialStateProperty.resolveWith<Color?>((states) {
          if (states.contains(MaterialState.pressed)) {
            return AppColors.cPrimaryColor;
          } // <-- Splash color
        }),
      ),
      child: SvgPicture.asset(
        svgPath,
        width: 30,
        height: 30,
      ),
    );
  }
}
