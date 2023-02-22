// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import '../utils/font.dart';
import '../utils/images.dart';
import '../utils/size.dart';
import '../utils/theme_manager.dart';

class ResturantDetails extends StatefulWidget {
  final String profileImage;
  final String userName;
  final String location;
  final String resturantName;
  final String foodImage1;
  final String foodImage2;
  final String about;
  final GestureTapCallback? moreIconOnTap;
  final GestureTapCallback? likeIconOnTap;
  final GestureTapCallback? commentIconOnTap;
  final GestureTapCallback? shareIconOnTap;

  ResturantDetails({
    Key? key,
    required this.profileImage,
    required this.userName,
    required this.location,
    required this.resturantName,
    required this.foodImage1,
    required this.foodImage2,
    required this.about,
    this.moreIconOnTap,
    this.likeIconOnTap,
    this.commentIconOnTap,
    this.shareIconOnTap,
  }) : super(key: key);

  @override
  State<ResturantDetails> createState() => _ResturantDetailsState();
}

class _ResturantDetailsState extends State<ResturantDetails> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(left: width * 0.02),
              child: Row(
                children: [
                  ///-------------------------friends-List----------------------------///

                  CircleAvatar(
                    radius: height * 0.03,
                    child: Image.asset(
                      widget.profileImage,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: width * 0.02,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ///-------------------------userName-text----------------------------///

                        Text(
                          widget.userName,
                          style: robotoRegularText.copyWith(
                            color: ThemeManager().getBlackColor,
                            fontSize: width * 0.045,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            ///-------------------------locatoin-icon----------------------------///

                            Image.asset(
                              ImageConst.locationIcon,
                              scale: 4,
                            ),

                            ///-------------------------locatoin-text----------------------------///

                            Text(
                              widget.location,
                              style: madaRegularText.copyWith(
                                color: ThemeManager().getBlackColor,
                                fontSize: width * 0.038,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),

            ///-------------------------more-icon----------------------------///

            GestureDetector(
              onTap: widget.moreIconOnTap,
              child: Image.asset(
                ImageConst.moreIcon,
                scale: 4,
              ),
            ),
          ],
        ),

        ///-------------------------resturant-text----------------------------///

        Container(
          margin: EdgeInsets.only(top: height * 0.01, bottom: height * 0.01),
          child: Text(
            widget.resturantName,
            style: robotoRegularText.copyWith(
              color: ThemeManager().getBlackColor,
              fontSize: width * 0.04,
            ),
          ),
        ),
        Row(
          children: [
            ///-------------------------food-image1----------------------------///

            Expanded(
              child: Image.asset(
                widget.foodImage1,
                fit: BoxFit.fill,
                height: height * 0.21,
              ),
            ),

            ///-------------------------food-image2----------------------------///

            Expanded(
              child: Image.asset(
                widget.foodImage2,
                fit: BoxFit.fill,
                height: height * 0.21,
              ),
            )
          ],
        ),

        ///-------------------------aboutResturant-text----------------------------///

        Container(
          margin: EdgeInsets.only(top: height * 0.01, left: height * 0.01),
          child: Text(
            widget.about,
            style: madaRegularText.copyWith(
              color: ThemeManager().getBlackColor,
              fontSize: width * 0.035,
            ),
          ),
        ),
        Divider(
          thickness: 2,
          height: height * 0.03,
        ),
        Container(
          margin: EdgeInsets.only(right: width * 0.68, left: height * 0.025),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ///-------------------------like-icon----------------------------///

              GestureDetector(
                onTap: widget.likeIconOnTap,
                child: Image.asset(
                  ImageConst.likeIcon,
                  scale: 3.5,
                ),
              ),

              ///-------------------------comment-icon----------------------------///

              GestureDetector(
                onTap: widget.commentIconOnTap,
                child: Image.asset(
                  ImageConst.commentIcon,
                  scale: 3.5,
                ),
              ),

              ///-------------------------share-icon----------------------------///

              GestureDetector(
                onTap: widget.shareIconOnTap,
                child: Image.asset(
                  ImageConst.shareIcon,
                  scale: 3.5,
                ),
              ),
            ],
          ),
        ),
        Divider(
          thickness: 2,
          height: height * 0.03,
          color: ThemeManager().getBlackColor,
        ),
      ],
    );
  }
}
