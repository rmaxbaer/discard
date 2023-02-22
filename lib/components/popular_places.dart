import 'package:flutter/material.dart';
import '/config/constants.dart';
import 'package:cached_network_image/cached_network_image.dart';

class PopularPlaces extends StatelessWidget {
  const PopularPlaces({
    Key? key,
  }) : super(key: key);

  get spacer => const Spacer();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 33.0, horizontal: 15.0),
      child: SizedBox(
        height: 135.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                'Popular Places This Month',
                style: TextStyle(
                  fontSize: Fonts.subtitle,
                  fontWeight: Fonts.mediumWeight,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                place(
                    'https://media2.fdncms.com/saltlake/imager/u/slideshow/2954410/img_3397.jpg'),
                place(
                    'https://media2.phoenixnewtimes.com/phx/imager/u/zoom/11491104/cafe_zupas.png?cb=1642609065'),
                place(
                    'https://assets.simpleviewinc.com/simpleview/image/fetch/c_fill,h_396,q_75,w_704/https://assets.simpleviewinc.com/simpleview/image/upload/crm/utahvalley/provorancheritos0_3059aef7-5056-a36a-0b14434effa49e03.jpg'),
                place(
                    'https://www.dpcheesesteaks.com/uploads/b/fd482ce0-1126-11ea-b05c-8bafb4f2688c/new%20logo.png'),
              ],
            )
          ],
        ),
      ),
    );
  }

  Row place(String imageUrl) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(
            width: 80.0,
            height: 80.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: CachedNetworkImageProvider(imageUrl),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
