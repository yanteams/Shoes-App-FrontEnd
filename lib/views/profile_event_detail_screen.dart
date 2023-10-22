import 'package:flutter_shop_app/models/userprofileitem2_item_widget.dart';
import 'package:flutter_shop_app/utils/snippet.dart';
import 'package:flutter_shop_app/views/favourites_edit_page.dart';
import 'package:flutter_shop_app/views/notifications_page.dart';
import 'package:flutter_shop_app/views/profile_event_page.dart';
import 'package:flutter_shop_app/views/search_searching_page.dart';
import 'package:flutter_shop_app/views/shop_detail_product_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop_app/widgets/custom_bottom_bar.dart';
import 'package:flutter_shop_app/widgets/custom_outlined_button.dart';
import 'package:flutter_shop_app/widgets/custom_text_style.dart';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

// ignore_for_file: must_be_immutable
class ProfileEventDetailScreen extends StatelessWidget {
  ProfileEventDetailScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 5.v),
                        child: Column(children: [
                          Container(
                              width: double.maxFinite,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 26.h, vertical: 17.v),
                              decoration: AppDecoration.fillWhiteA,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    SizedBox(height: 37.v),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgComponent1,
                                        height: 24.adaptSize,
                                        width: 24.adaptSize)
                                  ])),
                          CustomImageView(
                              imagePath: ImageConstant.imgRectangle39832,
                              height: 590.v,
                              width: 428.h),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 26.h, top: 68.v),
                                  child: Text("Find Your Feeel",
                                      style: theme.textTheme.headlineSmall))),
                          Container(
                              width: 376.h,
                              margin: EdgeInsets.only(
                                  left: 26.h, top: 23.v, right: 26.h),
                              child: Text(
                                  "Outrun traffic lights, sidestep roadblocks, and bounce along uneven footpaths in shoes built to embrace the city. Whether you prefer lots of cushioning, more support, or extra spring-the right running shoe can make you feel unstoppable in the face of obstacles. Choose the sensation you need for your stride so you can forget about your feet and focus on your best- feeling run.",
                                  maxLines: 7,
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyles.bodyMediumBlack900_1
                                      .copyWith(height: 1.71))),
                          SizedBox(height: 67.v),
                          CustomImageView(
                              imagePath: ImageConstant.imgRectangle39833,
                              height: 590.v,
                              width: 428.h),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 26.h, top: 68.v),
                                  child: Text("Nike Invincible 3: Cushion",
                                      style: theme.textTheme.headlineSmall))),
                          Container(
                              width: 367.h,
                              margin: EdgeInsets.only(
                                  left: 26.h, top: 23.v, right: 34.h),
                              child: Text(
                                  "Treat your feet to a plush experience in our most cushioned road-running shoe yet. With the help of ZoomX cushioning, your feet will feel the softness that has you looking for excuses to lace up and hit the pavement, kilometer after kilometer.",
                                  maxLines: 5,
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyles.bodyMediumBlack900_1
                                      .copyWith(height: 1.71))),
                          Container(
                              width: 376.h,
                              margin: EdgeInsets.only(
                                  left: 26.h, top: 25.v, right: 26.h),
                              child: Text(
                                  "\"I like how the cushion helps reduce shock while still being responsive.\"",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyles.titleMediumSemiBold)),
                          CustomImageView(
                              imagePath: ImageConstant.imgEllipse234,
                              height: 44.adaptSize,
                              width: 44.adaptSize,
                              radius: BorderRadius.circular(22.h),
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.only(left: 26.h, top: 13.v)),
                          SizedBox(height: 70.v),
                          StaggeredGridView.countBuilder(
                              shrinkWrap: true,
                              primary: false,
                              crossAxisCount: 4,
                              crossAxisSpacing: 20.h,
                              mainAxisSpacing: 20.h,
                              staggeredTileBuilder: (index) {
                                return StaggeredTile.fit(2);
                              },
                              itemCount: 4,
                              itemBuilder: (context, index) {
                                return Userprofileitem2ItemWidget(
                                    onTapUserprofileitem: () {
                                  onTapUserprofileitem(context);
                                });
                              }),
                          CustomOutlinedButton(
                              text: "Shop All",
                              margin: EdgeInsets.only(
                                  left: 26.h, top: 95.v, right: 26.h))
                        ])))),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Navigator.pushNamed(
                  navigatorKey.currentContext!, getCurrentRoute(type));
            })));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.shopDetailProductPage;
      case BottomBarEnum.Favourites:
        return AppRoutes.favouritesEditPage;
      case BottomBarEnum.Search:
        return AppRoutes.searchSearchingPage;
      case BottomBarEnum.Notifications:
        return AppRoutes.notificationsPage;
      case BottomBarEnum.Profile:
        return AppRoutes.profileEventPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.shopDetailProductPage:
        return ShopDetailProductPage();
      case AppRoutes.favouritesEditPage:
        return FavouritesEditPage();
      case AppRoutes.searchSearchingPage:
        return SearchSearchingPage();
      case AppRoutes.notificationsPage:
        return NotificationsPage();
      case AppRoutes.profileEventPage:
        return ProfileEventPage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the shopDetailProductContainerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the shopDetailProductContainerScreen.
  onTapUserprofileitem(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.shopDetailProductContainerScreen);
  }
}
