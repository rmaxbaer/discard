import 'package:dishplease_app/components/review_feed.dart';
import 'package:flutter/material.dart';
import '../config/constants.dart';

class Review extends StatelessWidget {
  const Review(this.reviewObject);

  final Map reviewObject;

  @override
  Widget build(BuildContext context) {
    String name = reviewObject['name'];
    String location = reviewObject['location'];
    String profilePic = reviewObject['profilePic'];

    return Column(
      children: [
        reviewHeader(name, location, profilePic),
        Row(
          children: [
            reviewPic(context, reviewObject['pics'][0]),
            reviewPic(context, reviewObject['pics'][1]),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(reviewObject['text']),
        ),
        const Divider(
          thickness: 2.0,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: const [
              Icon(
                Icons.favorite,
              ),
              SizedBox(
                width: 10.0,
              ),
              Icon(Icons.comment),
              SizedBox(
                width: 10.0,
              ),
              Icon(Icons.share),
              Spacer(),
            ],
          ),
        ),
        const Divider(
          thickness: 2.0,
        ),
      ],
    );
  }

  Padding reviewHeader(String name, String location, String profilePic) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          CircleAvatar(
            radius: 25.5,
            backgroundImage: NetworkImage(profilePic),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  name,
                  style: TextStyle(
                    fontWeight: Fonts.lightWeight,
                    fontSize: Fonts.nameText,
                  ),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.location_pin,
                      size: 20.0,
                    ),
                    Text(
                      location,
                      style: TextStyle(
                        fontWeight: Fonts.lightWeight,
                        fontSize: Fonts.smallText,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Icon(Icons.more_vert),
        ],
      ),
    );
  }

  Expanded reviewPic(BuildContext context, String pic) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return Dialog(
                child: Image.network(
                  pic,
                  width: 500.0,
                  fit: BoxFit.cover,
                ),
              );
            },
          );
        },
        child: Image.network(
          pic,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
