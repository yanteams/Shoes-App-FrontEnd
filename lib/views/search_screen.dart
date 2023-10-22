import 'package:flutter_shop_app/utils/snippet.dart';
import 'package:flutter_shop_app/views/favourites_edit_page.dart';
import 'package:flutter_shop_app/views/notifications_page.dart';
import 'package:flutter_shop_app/views/profile_event_page.dart';
import 'package:flutter_shop_app/views/search_searching_page.dart';
import 'package:flutter_shop_app/views/shop_detail_product_page.dart';
import 'package:flutter_shop_app/widgets/app_bar/appbar_image_1.dart';
import 'package:flutter_shop_app/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:flutter_shop_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop_app/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class SearchScreen extends StatelessWidget {
  SearchScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: 50.h,
                leading: AppbarImage1(
                    svgPath: ImageConstant.imgSearchBlack900,
                    margin:
                        EdgeInsets.only(left: 26.h, top: 54.v, bottom: 17.v)),
                title: AppbarSubtitle3(
                    text: "Search Product",
                    margin:
                        EdgeInsets.only(left: 11.h, top: 56.v, bottom: 19.v),
                    onTap: () {
                      onTapSearchproduct(context);
                    }),
                styleType: Style.bgFill),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    child: SizedBox(height: 1041.v, width: double.maxFinite))),
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

  /// Navigates to the searchClickScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the searchClickScreen.
  onTapSearchproduct(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.searchClickScreen);
  }
}
