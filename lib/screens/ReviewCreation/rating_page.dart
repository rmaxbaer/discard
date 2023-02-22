import 'dart:io';

import 'package:dishplease_app/screens/ReviewCreation/review_page.dart';
import 'package:flutter/material.dart';
import 'dart:io';

import 'package:dishplease_app/screens/ReviewCreation/recommend_page.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../models/rating_model.dart';
import '../../utils/colors.dart';
import '../../utils/font.dart';
import '../../utils/images.dart';
import '../../utils/size.dart';
import '../../utils/texts.dart';
import '../../utils/theme_manager.dart';
import '../../widgets/close_button.dart';
import '../../widgets/common_button.dart';
import '../../widgets/common_header.dart';
import '../../widgets/common_text.dart';

class RatingPage extends StatefulWidget {
  String restaurantName;
  File pickImage;
  RatingPage({
    Key? key,
    required this.restaurantName,
    required this.pickImage,
  }) : super(key: key);

  @override
  State<RatingPage> createState() => _RatingPageState();
}

class _RatingPageState extends State<RatingPage> {
  List<RatingIcons> ratingIcons = [
    RatingIcons(
        ratingIcon: ImageConst.ratingIconColor1,
        ratingIconColor: ThemeManager().getratingIconColor1),
    RatingIcons(
        ratingIcon: ImageConst.ratingIconColor2,
        ratingIconColor: ThemeManager().getratingIconColor2),
    RatingIcons(
        ratingIcon: ImageConst.ratingIconColor3,
        ratingIconColor: ThemeManager().getratingIconColor3),
    RatingIcons(
        ratingIcon: ImageConst.ratingIconColor4,
        ratingIconColor: ThemeManager().getratingIconColor4),
    RatingIcons(
        ratingIcon: ImageConst.ratingIconColor5,
        ratingIconColor: ThemeManager().getratingIconColor5),
  ];

  int RatingIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeManager().getPrimaryColor,
      body: SafeArea(
        bottom: false,
        child: Container(
          height: height,
          color: ThemeManager().getwhiteColor,
          child: Column(
            children: [
              CommonHeader(text: widget.restaurantName),
              Expanded(
                child: SingleChildScrollView(
                  padding: EdgeInsets.only(bottom: height * 0.03),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ///-------------------------camera-image--------------------------------///

                      Image.file(
                        widget.pickImage,
                        width: width,
                        height: height * 0.66,
                        fit: BoxFit.fill,
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          top: height * 0.02,
                          left: width * 0.042,
                          right: width * 0.042,
                        ),
                        margin: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ///-------------------------rating-text--------------------------------///

                            CommonText(
                              text: TextConst.rating,
                            ),

                            ///-------------------------rating-Icon--------------------------------///

                            Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(
                                  top: height * 0.01, bottom: height * 0.015),
                              height: height * 0.07,
                              child: ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                itemCount: ratingIcons.length,
                                shrinkWrap: true,
                                itemBuilder: (BuildContext context, int index) {
                                  return GestureDetector(
                                    onTap: () {
                                      RatingIndex = index;
                                      setState(() {});
                                    },
                                    child: Container(
                                      margin:
                                          EdgeInsets.only(right: width * 0.03),
                                      child: Image.asset(
                                        ratingIcons[index].ratingIcon,
                                        color: RatingIndex == index
                                            ? ratingIcons[index].ratingIconColor
                                            : ThemeManager().geticonColor,
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: height * 0.02),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  //---------------------------back-button-----------------------///

                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: CommonButton(
                                      containerColor:
                                          ThemeManager().getlightGrayColor,
                                      text: TextConst.back,
                                      textColor: ThemeManager().getBlackColor,
                                    ),
                                  ),

                                  //---------------------------next-button------------------------------//

                                  GestureDetector(
                                    onTap: () {
                                      if (RatingIndex >= 0)
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => ReviewPage(
                                              restaurantName:
                                                  widget.restaurantName,
                                              pickImage: widget.pickImage,
                                            ),
                                          ),
                                        );
                                    },
                                    child: CommonButton(
                                      containerColor: RatingIndex >= 0
                                          ? ThemeManager().getPrimaryColor
                                          : ThemeManager()
                                              .getlightGrayColor
                                              .withOpacity(.5),
                                      text: TextConst.next,
                                      textColor: RatingIndex >= 0
                                          ? ThemeManager().getBlackColor
                                          : ThemeManager().getgrayColor,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
