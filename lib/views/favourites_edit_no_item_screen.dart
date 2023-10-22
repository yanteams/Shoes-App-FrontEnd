import 'package:flutter_shop_app/utils/snippet.dart';
<<<<<<< HEAD
import 'package:flutter_shop_app/views/favourites_edit_page.dart';
import 'package:flutter_shop_app/views/notifications_page.dart';
import 'package:flutter_shop_app/views/profile_event_page.dart';
import 'package:flutter_shop_app/views/search_searching_page.dart';
import 'package:flutter_shop_app/views/shop_detail_product_page.dart';
import 'package:flutter_shop_app/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop_app/widgets/custom_text_style.dart';

class FavouritesEditNoItemScreen extends StatelessWidget {
  FavouritesEditNoItemScreen({Key? key})
      : super(
    key: key,
  );
=======
import 'package:flutter_shop_app/views/bag_item_page.dart';
import 'package:flutter_shop_app/views/favourites_edit_page.dart';
import 'package:flutter_shop_app/views/shop_detail_product_page.dart';
import 'package:flutter_shop_app/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class FavouritesEditNoItemScreen extends StatelessWidget {
  FavouritesEditNoItemScreen({Key? key}) : super(key: key);
>>>>>>> origin/main

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
<<<<<<< HEAD

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(bottom: 5.v),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 7.v),
                    decoration: AppDecoration.fillWhiteA,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 37.v),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 26.h,
                            vertical: 6.v,
                          ),
                          decoration: AppDecoration.fillWhiteA,
                          child: Text(
                            "Favourites",
                            style: theme.textTheme.headlineSmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 223.v),
                  CustomImageView(
                    svgPath: ImageConstant.imgComponent2Black900,
                    height: 38.adaptSize,
                    width: 38.adaptSize,
                  ),
                  SizedBox(height: 14.v),
                  SizedBox(
                    width: 187.h,
                    child: Text(
                      "Your favourites is empty.\nWhen you add products they’ll\nappear here.",
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.bodyMediumBlack900_1,
                    ),
                  ),
                  SizedBox(height: 19.v),
                  Text(
                    "Shop Now ",
                    style: CustomTextStyles.titleMediumSemiBold,
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            Navigator.pushNamed(
                navigatorKey.currentContext!, getCurrentRoute(type));
          },
        ),
      ),
    );
=======
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 5.v),
                        child: Column(children: [
                          Container(
                              padding: EdgeInsets.symmetric(vertical: 7.v),
                              decoration: AppDecoration.fillWhiteA,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    SizedBox(height: 37.v),
                                    Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 26.h, vertical: 6.v),
                                        decoration: AppDecoration.fillWhiteA,
                                        child: Text("Favourites",
                                            style:
                                                theme.textTheme.headlineSmall))
                                  ])),
                          SizedBox(height: 223.v),
                          CustomImageView(
                              svgPath: ImageConstant.imgComponent2Black900,
                              height: 38.adaptSize,
                              width: 38.adaptSize),
                          SizedBox(height: 14.v),
                          SizedBox(
                              width: 187.h,
                              child: Text(
                                  "Your favourites is empty.\nWhen you add products they’ll\nappear here.",
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style:
                                      CustomTextStyles.bodyMediumBlack900_1)),
                          SizedBox(height: 19.v),
                          GestureDetector(
                              onTap: () {
                                onTapTxtShopnow(context);
                              },
                              child: Text("Shop Now ",
                                  style: CustomTextStyles.titleMediumSemiBold))
                        ])))),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Navigator.pushNamed(
                  navigatorKey.currentContext!, getCurrentRoute(type));
            })));
>>>>>>> origin/main
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.shopDetailProductPage;
      case BottomBarEnum.Favourites:
        return AppRoutes.favouritesEditPage;
<<<<<<< HEAD
      case BottomBarEnum.Search:
        return AppRoutes.searchSearchingPage;
      case BottomBarEnum.Notifications:
        return AppRoutes.notificationsPage;
      case BottomBarEnum.Profile:
        return AppRoutes.profileEventPage;
=======
      case BottomBarEnum.Bag:
        return AppRoutes.bagItemPage;
      case BottomBarEnum.Notifications:
        return "/";
      case BottomBarEnum.Profile:
        return "/";
>>>>>>> origin/main
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
<<<<<<< HEAD
      case AppRoutes.searchSearchingPage:
        return SearchSearchingPage();
      case AppRoutes.notificationsPage:
        return NotificationsPage();
      case AppRoutes.profileEventPage:
        return ProfileEventPage();
=======
      case AppRoutes.bagItemPage:
        return BagItemPage();
>>>>>>> origin/main
      default:
        return DefaultWidget();
    }
  }
<<<<<<< HEAD
=======

  /// Navigates to the shopAllTabContainerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the shopAllTabContainerScreen.
  onTapTxtShopnow(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.shopAllTabContainerScreen);
  }
>>>>>>> origin/main
}
