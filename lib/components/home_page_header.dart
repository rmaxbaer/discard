import 'package:flutter/material.dart';
import 'package:dishplease_app/config/constants.dart';

class HomePageHeader extends StatelessWidget {
  const HomePageHeader(
      {super.key, required this.padding, required this.picRadius});
  final double picRadius;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: [
          GestureDetector(
            onTap: () => Scaffold.of(context).openDrawer(),
            child: CircleAvatar(
              radius: picRadius,
              backgroundImage: const NetworkImage(
                  'https://discourse.disneyheroesgame.com/uploads/default/original/3X/b/3/b338bca3bde115ed2c2f409f69866b237225dc0c.jpeg'),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: TextField(
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: AppColors.cBlackish,
                ),
                hintText: 'Search',
                hintStyle: const TextStyle(
                  textBaseline: TextBaseline.alphabetic,
                ),
                border: const OutlineInputBorder(),
                filled: true,
                fillColor: AppColors.cLightGray,
              ),
              style: TextStyle(
                fontSize: Fonts.subtitle,
                fontWeight: Fonts.lightestWeight,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
