import 'package:flutter_shop_app/utils/snippet.dart';
import 'package:flutter_shop_app/views/favourites_edit_page.dart';
import 'package:flutter_shop_app/views/notifications_page.dart';
import 'package:flutter_shop_app/views/profile_event_page.dart';
import 'package:flutter_shop_app/views/search_searching_page.dart';
import 'package:flutter_shop_app/views/shop_detail_product_page.dart';
import 'package:flutter_shop_app/widgets/app_bar/appbar_subtitle_4.dart';
import 'package:flutter_shop_app/widgets/app_bar/appbar_title.dart';
import 'package:flutter_shop_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter_shop_app/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop_app/widgets/custom_text_style.dart';

class FavouritesScreen extends StatelessWidget {
  FavouritesScreen({Key? key})
      : super(
    key: key,
  );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          title: AppbarTitle(
            text: "Favourites",
            margin: EdgeInsets.only(
              left: 26.h,
              top: 50.v,
              bottom: 15.v,
            ),
          ),
          actions: [
            AppbarSubtitle4(
              text: "Edit",
              margin: EdgeInsets.fromLTRB(26.h, 56.v, 26.h, 19.v),
            ),
          ],
          styleType: Style.bgFill,
        ),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(bottom: 5.v),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: double.maxFinite,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(right: 10.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  imagePath:
                                  ImageConstant.imgRectangle39824204x204,
                                  height: 204.adaptSize,
                                  width: 204.adaptSize,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 26.h,
                                    top: 12.v,
                                  ),
                                  child: Text(
                                    "Best Seller",
                                    style: CustomTextStyles.titleMediumRed800,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 26.h,
                                    top: 5.v,
                                  ),
                                  child: Text(
                                    "Nike Waffle Debut",
                                    style: CustomTextStyles
                                        .titleMediumOnPrimaryContainerSemiBold,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 26.h,
                                    top: 5.v,
                                  ),
                                  child: Text(
                                    "Men’s Shoes",
                                    style:
                                    CustomTextStyles.bodyMediumBluegray500,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 26.h,
                                    top: 5.v,
                                  ),
                                  child: Text(
                                    "105",
                                    style: theme.textTheme.titleSmall,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 10.h,
                              bottom: 25.v,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgRectangle398249,
                                  height: 204.adaptSize,
                                  width: 204.adaptSize,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 26.h,
                                    top: 12.v,
                                  ),
                                  child: Text(
                                    "Nike Air Max 270",
                                    style: CustomTextStyles
                                        .titleMediumOnPrimaryContainerSemiBold,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 26.h,
                                    top: 5.v,
                                  ),
                                  child: Text(
                                    "Men’s Shoes",
                                    style:
                                    CustomTextStyles.bodyMediumBluegray500,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 26.h,
                                    top: 5.v,
                                  ),
                                  child: Text(
                                    "249",
                                    style: theme.textTheme.titleSmall,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 45.v),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle39824204x204,
                        height: 204.adaptSize,
                        width: 204.adaptSize,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 26.h,
                          top: 12.v,
                        ),
                        child: Text(
                          "Best Seller",
                          style: CustomTextStyles.titleMediumRed800,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 26.h,
                          top: 5.v,
                        ),
                        child: Text(
                          "Nike Waffle Debut",
                          style: CustomTextStyles
                              .titleMediumOnPrimaryContainerSemiBold,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 26.h,
                          top: 5.v,
                        ),
                        child: Text(
                          "Men’s Shoes",
                          style: CustomTextStyles.bodyMediumBluegray500,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 26.h,
                          top: 5.v,
                        ),
                        child: Text(
                          "105",
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                    ],
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
}
