import 'package:flutter/material.dart';
import '../screens/ReviewCreation/enter_restaurant_page.dart';
import '../utils/colors.dart';
import '../utils/font.dart';
import '../utils/images.dart';
import '../utils/size.dart';
import '../utils/texts.dart';
import '../utils/theme_manager.dart';

class closeButton extends StatefulWidget {
  Color? color;
  double? scale;
  closeButton({
    Key? key,
    this.color,
    this.scale,
  }) : super(key: key);

  @override
  State<closeButton> createState() => _closeButtonState();
}

class _closeButtonState extends State<closeButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Image.asset(
        ImageConst.closeButton,
        scale: 4,
        color: widget.color,
      ),
      onTap: () {
        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext context) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: width * 0.13),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: ThemeManager().getwhiteColor,
                      border: Border.all(
                          color: ThemeManager().getPrimaryColor,
                          width: width * 0.006),
                      borderRadius:
                          BorderRadius.all(Radius.circular(width * 0.05))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ///--------------------------close-button------------------------------///

                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          margin: EdgeInsets.only(
                              right: width * 0.02, top: height * 0.01),
                          alignment: Alignment.centerRight,
                          child: Image.asset(
                            ImageConst.closeButton,
                            color: ThemeManager().getPrimaryColor,
                            scale: 7,
                          ),
                        ),
                      ),

                      ///--------------------------areYouSure-text------------------------------///

                      Container(
                        margin: EdgeInsets.only(
                          top: height * 0.01,
                          bottom: height * 0.025,
                        ),
                        child: Text(
                          TextConst.areYouSure,
                          textAlign: TextAlign.center,
                          style: madaRegularText.copyWith(
                            decoration: TextDecoration.none,
                            color: ThemeManager().getPrimaryColor,
                            fontSize: width * 0.05,
                          ),
                        ),
                      ),
                      Container(
                        color: ThemeManager().getPrimaryColor,
                        width: width,
                        height: 1,
                      ),
                      IntrinsicHeight(
                        child: Row(
                          children: [
                            ///--------------------------no-button------------------------------///

                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    vertical: height * 0.008,
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(
                                    TextConst.no,
                                    textAlign: TextAlign.center,
                                    style: madaRegularText.copyWith(
                                      decoration: TextDecoration.none,
                                      color: primaryColor,
                                      fontSize: width * 0.058,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const VerticalDivider(
                              thickness: 1,
                              color: primaryColor,
                            ),

                            ///--------------------------Discard-button------------------------------///

                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pushReplacement(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder:
                                          (context, animation1, animation2) =>
                                              EnterRestaurantPage(),
                                      transitionDuration: Duration.zero,
                                      reverseTransitionDuration: Duration.zero,
                                    ),
                                  );
                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: height * 0.008),
                                  alignment: Alignment.center,
                                  child: Text(
                                    TextConst.discard,
                                    textAlign: TextAlign.center,
                                    style: madaSemiBoldText.copyWith(
                                      decoration: TextDecoration.none,
                                      color: redColor,
                                      fontSize: width * 0.058,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
