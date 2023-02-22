import 'dart:io';
import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../../utils/font.dart';
import '../../utils/images.dart';
import '../../utils/size.dart';
import '../../utils/texts.dart';
import '../../utils/theme_manager.dart';
import '../../widgets/common_button.dart';
import '../../widgets/common_header.dart';
import '../../widgets/common_text.dart';

class ReviewPage extends StatefulWidget {
  String restaurantName;
  File pickImage;
  ReviewPage({
    Key? key,
    required this.restaurantName,
    required this.pickImage,
  }) : super(key: key);

  @override
  State<ReviewPage> createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
  TextEditingController _reviewController = TextEditingController();
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
                      ///--------------------------camera-image--------------------------------///

                      Image.file(
                        widget.pickImage,
                        width: width,
                        height: height * 0.5,
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
                            ///--------------------------review-Text--------------------------------///

                            CommonText(
                              text: TextConst.writeReview,
                            ),

                            ///--------------------------review-TextFormField--------------------------------///

                            Container(
                              margin: EdgeInsets.only(
                                  top: height * 0.01, bottom: height * 0.025),
                              decoration: BoxDecoration(
                                  color: ThemeManager().getlightGrayColor,
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(width * 0.015))),
                              child: TextFormField(
                                style: robotoRegularText.copyWith(
                                  color: ThemeManager().getgrayColor,
                                ),
                                maxLines: 8,
                                controller: _reviewController,
                                cursorColor: ThemeManager().getgrayColor,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(
                                    left: width * 0.03,
                                    top: height * 0.01,
                                    right: width * 0.03,
                                    bottom: height * 0.01,
                                  ),
                                  border: InputBorder.none,
                                  hintText: TextConst.insertText,
                                  hintStyle: robotoRegularText.copyWith(
                                    color: ThemeManager().getgrayColor,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  bottom: height * 0.02, right: width * 0.02),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
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

                                  //---------------------------post-button------------------------------//

                                  GestureDetector(
                                    onTap: () {},
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.only(
                                              top: height * 0.012,
                                              bottom: height * 0.012,
                                              right: width * 0.04,
                                              left: width * 0.15),
                                          color: ThemeManager().getPrimaryColor,
                                          child: Text(
                                            TextConst.post,
                                            style: madaRegularText.copyWith(
                                              color:
                                                  ThemeManager().getBlackColor,
                                              fontSize: width * 0.05,
                                            ),
                                          ),
                                        ),
                                        Image.asset(
                                          ImageConst.triangleImage,
                                          scale: 3.5,
                                        ),
                                      ],
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
