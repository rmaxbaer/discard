import 'dart:io';

import 'package:dishplease_app/screens/ReviewCreation/recommend_page.dart';
import 'package:dishplease_app/utils/images.dart';
import 'package:dishplease_app/utils/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../utils/colors.dart';
import '../../utils/font.dart';
import '../../utils/size.dart';
import '../../utils/texts.dart';
import '../../widgets/close_button.dart';
import '../../widgets/common_button.dart';
import '../../widgets/common_text.dart';

class EnterRestaurantPage extends StatefulWidget {
  EnterRestaurantPage({Key? key}) : super(key: key);

  @override
  State<EnterRestaurantPage> createState() => _EnterRestaurantPageState();
}

class _EnterRestaurantPageState extends State<EnterRestaurantPage> {
  File? imageFile;
  _getFromGallery() async {
    XFile? pickedFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
      });
    }
  }

  _getFromCamera() async {
    XFile? pickedFile = await ImagePicker().pickImage(
      source: ImageSource.camera,
    );
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
      });
    }
  }

  TextEditingController _restaurantController = TextEditingController();
  bool textfieldHasText = false;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: ThemeManager().getPrimaryColor,
      body: SafeArea(
        bottom: false,
        child: Container(
          color: ThemeManager().getwhiteColor,
          height: height,
          child: Column(
            children: [
              ///----------------------close-button--------------------///

              Container(
                color: ThemeManager().getPrimaryColor,
                alignment: Alignment.centerRight,
                padding: EdgeInsets.only(
                  bottom: height * 0.008,
                  right: width * 0.02,
                ),
                child: closeButton(),
              ),

              Expanded(
                child: SingleChildScrollView(
                  padding: EdgeInsets.only(bottom: height * 0.03),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ///---------------------------Camera-Image----------------------///

                      if (imageFile != null)
                        Image.file(
                          imageFile!,
                          width: width,
                          height: height * 0.66,
                          fit: BoxFit.fill,
                        )
                      else
                        GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                ),
                              ),
                              context: context,
                              builder: (context) {
                                return Wrap(
                                  children: [
                                    Column(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            _getFromGallery();
                                            Navigator.pop(context);
                                          },
                                          child: Container(
                                            margin:
                                                EdgeInsets.all(height * 0.02),
                                            child: Text(
                                              'GALLERY',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText2!
                                                  .copyWith(
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                  ),
                                            ),
                                          ),
                                        ),
                                        Divider(
                                          thickness: 2,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            _getFromCamera();
                                            Navigator.pop(context);
                                          },
                                          child: Container(
                                            margin:
                                                EdgeInsets.all(height * 0.02),
                                            child: Text(
                                              'CAMERA',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText2!
                                                  .copyWith(
                                                      color: Theme.of(context)
                                                          .primaryColor),
                                            ),
                                          ),
                                        ),
                                        Divider(
                                          thickness: 2,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.pop(context);
                                          },
                                          child: Container(
                                            margin:
                                                EdgeInsets.all(height * 0.02),
                                            child: Text(
                                              'Cancel',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText2!
                                                  .copyWith(
                                                      color: Theme.of(context)
                                                          .errorColor),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                          child: Container(
                            width: width,
                            height: height * 0.66,
                            child: Center(
                              child: Text(
                                TextConst.clickHereToTakePic,
                                style: madaMediumText.copyWith(
                                    fontSize: width * 0.06,
                                    decoration: TextDecoration.underline),
                              ),
                            ),
                          ),
                        ),

                      Container(
                        padding: EdgeInsets.only(
                          top: height * 0.02,
                          left: width * 0.04,
                          right: width * 0.04,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ///-------------------------restaurant-text--------------------------///

                            CommonText(text: TextConst.restaurant),

                            ///---------------------enter-restaurant-textfield----------------------///

                            Container(
                              margin: EdgeInsets.only(
                                top: height * 0.02,
                              ),
                              decoration: BoxDecoration(
                                color: textfieldHasText
                                    ? ThemeManager().getlightGrayColor
                                    : ThemeManager().getPrimaryColor,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(width * 0.015),
                                ),
                              ),
                              child: TextFormField(
                                autofocus: false,
                                style: robotoRegularText.copyWith(
                                  color: textfieldHasText
                                      ? ThemeManager().getBlackColor
                                      : ThemeManager().getgrayColor,
                                ),
                                controller: _restaurantController,
                                cursorColor: ThemeManager().getgrayColor,
                                onChanged: (value) {
                                  if (value.isNotEmpty) {
                                    textfieldHasText = true;
                                  } else {
                                    textfieldHasText = false;
                                  }
                                  setState(() {});
                                },
                                decoration: InputDecoration(
                                  contentPadding:
                                      EdgeInsets.only(left: width * 0.03),
                                  border: InputBorder.none,
                                  hintText: TextConst.enterRestaurant,
                                  hintStyle: robotoRegularText.copyWith(
                                    color: ThemeManager().getgrayColor,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  top: height * 0.025, bottom: height * 0.02),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  //---------------------------take-agian-button-----------------------///

                                  GestureDetector(
                                    onTap: () {
                                      _getFromCamera();
                                    },
                                    child: CommonButton(
                                      containerColor:
                                          ThemeManager().getlightGrayColor,
                                      text: TextConst.takeAgain,
                                      textColor: ThemeManager().getBlackColor,
                                    ),
                                  ),

                                  //---------------------------next-button------------------------------//

                                  GestureDetector(
                                    onTap: () {
                                      if (textfieldHasText &&
                                          imageFile != null) {
                                        FocusScope.of(context).unfocus();
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                RecommendedPage(
                                              restaurantName:
                                                  _restaurantController.text,
                                              pickImage: imageFile!,
                                            ),
                                          ),
                                        );
                                      }
                                    },
                                    child: CommonButton(
                                      containerColor:
                                          textfieldHasText && imageFile != null
                                              ? ThemeManager().getPrimaryColor
                                              : ThemeManager()
                                                  .getlightGrayColor
                                                  .withOpacity(.5),
                                      text: TextConst.next,
                                      textColor:
                                          textfieldHasText && imageFile != null
                                              ? ThemeManager().getBlackColor
                                              : ThemeManager().getgrayColor,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
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

  Widget commanButton(String image) {
    return Container(
      margin: EdgeInsets.only(left: width * 0.03, right: width * 0.03),
      child: CircleAvatar(
        radius: height * 0.05,
        backgroundColor: primaryColor,
        child: Image.asset(
          image,
          color: blackColor,
          height: height * 0.043,
        ),
      ),
    );
  }
}
