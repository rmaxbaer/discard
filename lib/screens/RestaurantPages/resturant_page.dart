import 'package:flutter/material.dart';
import 'package:dishplease_app/utils/theme_manager.dart';
import '../../utils/colors.dart';
import '../../utils/font.dart';
import '../../utils/images.dart';
import '../../utils/size.dart';
import '../../utils/texts.dart';
import '../../widgets/common_column.dart';
import '../../widgets/resturant_details.dart';

class ResturantPage extends StatefulWidget {
  ResturantPage({Key? key}) : super(key: key);

  @override
  State<ResturantPage> createState() => _ResturantPageState();
}

class _ResturantPageState extends State<ResturantPage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: ThemeManager().getPrimaryColor,
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              fit: StackFit.loose,
              children: [
                Column(
                  children: [
                    ///-----------------------restuarant-image-----------------------///

                    Container(
                      width: width,
                      height: height * 0.2,
                      child: Image.asset(
                        ImageConst.backgroundImage,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      width: width,
                      color: whiteColor,
                      padding:
                          EdgeInsets.only(top: height * 0.065 + height * 0.01),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ///---------------------resturant-name----------------------///

                          Text(
                            TextConst.hiresBig,
                            style: mograRegularText.copyWith(
                              color: ThemeManager().getsecondaryColor,
                              fontSize: width * 0.07,
                            ),
                          ),

                          Container(
                            margin: EdgeInsets.only(
                              left: width * 0.15,
                              right: width * 0.15,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      TextConst.twok,
                                      style: openSansBoldText.copyWith(
                                        color: ThemeManager().getsecondaryColor,
                                        fontSize: width * 0.06,
                                      ),
                                    ),

                                    ///----------------------visit-text--------------------///

                                    Text(
                                      TextConst.visits,
                                      style: openSansRegularText.copyWith(
                                        color: ThemeManager().getBlackColor,
                                        fontSize: width * 0.03,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Image.asset(
                                      ImageConst.ratingIcon,
                                      scale: 4.1,
                                    ),

                                    ///----------------------rating-text--------------------///

                                    Text(
                                      TextConst.rating,
                                      style: openSansRegularText.copyWith(
                                        color: ThemeManager().getBlackColor,
                                        fontSize: width * 0.03,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      TextConst.fiveSixTwo,
                                      style: openSansBoldText.copyWith(
                                        color: ThemeManager().getsecondaryColor,
                                        fontSize: width * 0.06,
                                      ),
                                    ),

                                    ///----------------------recommend-text--------------------///

                                    Text(
                                      TextConst.recommend,
                                      style: openSansRegularText.copyWith(
                                        color: ThemeManager().getBlackColor,
                                        fontSize: width * 0.03,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      TextConst.twoHundread,
                                      style: openSansBoldText.copyWith(
                                        color: ThemeManager().getsecondaryColor,
                                        fontSize: width * 0.06,
                                      ),
                                    ),

                                    ///----------------------review-text--------------------///

                                    Container(
                                      child: Text(
                                        TextConst.review,
                                        style: openSansRegularText.copyWith(
                                          color: ThemeManager().getBlackColor,
                                          fontSize: width * 0.03,
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),

                          ///---------------------info-text----------------------///

                          Container(
                            margin: EdgeInsets.only(
                              left: width * 0.045,
                              top: height * 0.01,
                            ),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              TextConst.info,
                              style: madaRegularText.copyWith(
                                color: ThemeManager().getsecondaryColor,
                                fontSize: width * 0.06,
                              ),
                            ),
                          ),

                          ///---------------------resturant-details----------------------///

                          Container(
                            margin: EdgeInsets.only(
                              left: width * 0.1,
                              right: width * 0.1,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ///---------------------resturant-phone-number----------------------///

                                Text(
                                  TextConst.phoneNumber,
                                  style: openSansRegularText.copyWith(
                                    color: ThemeManager().getBlackColor,
                                    fontSize: width * 0.03,
                                  ),
                                ),

                                ///---------------------resturant-hours----------------------///

                                Text(
                                  TextConst.Hoursmf,
                                  maxLines: 3,
                                  textAlign: TextAlign.center,
                                  style: openSansRegularText.copyWith(
                                    color: ThemeManager().getBlackColor,
                                    fontSize: width * 0.03,
                                  ),
                                ),

                                ///---------------------resturant-address----------------------///

                                Text(
                                  TextConst.address,
                                  maxLines: 3,
                                  textAlign: TextAlign.center,
                                  style: openSansRegularText.copyWith(
                                    color: ThemeManager().getBlackColor,
                                    fontSize: width * 0.03,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          ///---------------------tab-bar----------------------///

                          Container(
                            margin: EdgeInsets.only(top: height * 0.01),
                            child: TabBar(
                              indicatorColor: ThemeManager().getBlackColor,
                              labelStyle: openSansRegularText.copyWith(
                                fontSize: width * 0.058,
                              ),
                              unselectedLabelStyle:
                                  openSansRegularText.copyWith(
                                fontSize: width * 0.058,
                              ),
                              labelColor: ThemeManager().getBlackColor,
                              unselectedLabelColor: ThemeManager().getgrayColor,
                              controller: _tabController,
                              tabs: [
                                Tab(
                                  text: TextConst.friends,
                                ),
                                Tab(
                                  text: TextConst.top,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                ///-------------------------menu-icon---------------------------///

                Container(
                  margin: EdgeInsets.only(top: height * 0.015),
                  child: Align(
                    alignment: Alignment(-0.94, 0),
                    child: Image.asset(
                      ImageConst.menuIcon,
                      scale: width * 0.01,
                    ),
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.only(top: height * 0.2 - (height * 0.053) / 2),
                  padding: EdgeInsets.symmetric(horizontal: width * 0.1),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ///-------------------------eaten-icon---------------------------///

                      CommonColumn(
                        icon: ImageConst.eatenIcon,
                        text: TextConst.eaten,
                      ),

                      ///-------------------------like-icon---------------------------///

                      CommonColumn(
                        icon: ImageConst.likeIconFilled,
                        text: TextConst.like,
                      ),

                      ///-------------------------review-icon---------------------------///

                      CommonColumn(
                        icon: ImageConst.reviewIcon,
                        text: TextConst.review,
                      ),

                      ///-------------------------dishList-icon---------------------------///

                      CommonColumn(
                        icon: ImageConst.dishListIcon,
                        text: TextConst.dishList,
                      ),
                    ],
                  ),
                )
              ],
            ),

            ///---------------------tab-view----------------------///

            Expanded(
              child: Container(
                color: ThemeManager().getwhiteColor,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    ///-------------------------friends-List----------------------------///

                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: 3,
                      padding: EdgeInsets.only(
                        top: height * 0.015,
                        bottom: height * 0.005,
                      ),
                      itemBuilder: (context, index) {
                        return ResturantDetails(
                          profileImage: ImageConst.image4,
                          userName: TextConst.yungTwyman,
                          location: TextConst.provoUtah,
                          resturantName: TextConst.zupas,
                          foodImage1: ImageConst.image1,
                          foodImage2: ImageConst.image2,
                          about: TextConst.zupasIsClassic,
                        );
                      },
                    ),

                    ///-------------------------top-List----------------------------///

                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: 3,
                      padding: EdgeInsets.only(
                        top: height * 0.015,
                        bottom: height * 0.005,
                      ),
                      itemBuilder: (context, index) {
                        return ResturantDetails(
                          profileImage: ImageConst.image4,
                          userName: TextConst.yungTwyman,
                          location: TextConst.provoUtah,
                          resturantName: TextConst.zupas,
                          foodImage1: ImageConst.image1,
                          foodImage2: ImageConst.image2,
                          about: TextConst.zupasIsClassic,
                        );
                      },
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
