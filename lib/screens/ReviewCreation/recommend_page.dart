import 'dart:io';
import 'package:dishplease_app/screens/ReviewCreation/rating_page.dart';
import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../../utils/images.dart';
import '../../utils/size.dart';
import '../../utils/texts.dart';
import '../../utils/theme_manager.dart';
import '../../widgets/common_button.dart';
import '../../widgets/common_header.dart';
import '../../widgets/common_text.dart';

class RecommendedPage extends StatefulWidget {
  String restaurantName;
  File pickImage;
  RecommendedPage({
    Key? key,
    required this.restaurantName,
    required this.pickImage,
  }) : super(key: key);

  @override
  State<RecommendedPage> createState() => _RecommendedPageState();
}

class _RecommendedPageState extends State<RecommendedPage> {
  bool isChecked = false;
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
                            ///-------------------------recommonded-text--------------------------------///

                            CommonText(
                              text: TextConst.doYouRecommend,
                            ),

                            ///--------------------------check-box--------------------------------///
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isChecked = !isChecked;
                                });
                              },
                              child: Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.only(
                                        bottom: height * 0.025,
                                        top: height * 0.025),
                                    child: Image.asset(
                                      ImageConst.checkBox,
                                      scale: 4,
                                    ),
                                  ),
                                  isChecked
                                      ? Align(
                                          alignment: Alignment(0.06, -100),
                                          child: Image.asset(
                                            ImageConst.trueIcon,
                                            width: width * 0.17,
                                            color: ThemeManager().getBlackColor,
                                          ),
                                        )
                                      : Container()
                                ],
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
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => RatingPage(
                                            restaurantName:
                                                widget.restaurantName,
                                            pickImage: widget.pickImage,
                                          ),
                                        ),
                                      );
                                    },
                                    child: CommonButton(
                                      containerColor:
                                          ThemeManager().getPrimaryColor,
                                      text: TextConst.next,
                                      textColor: ThemeManager().getBlackColor,
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
