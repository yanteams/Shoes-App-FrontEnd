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

// ignore_for_file: must_be_immutable
class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);

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
                                        child: Text("Profile",
                                            style:
                                                theme.textTheme.headlineSmall))
                                  ])),
                          CustomImageView(
                              imagePath: ImageConstant.imgEllipse227,
                              height: 79.adaptSize,
                              width: 79.adaptSize,
                              radius: BorderRadius.circular(39.h)),
                          SizedBox(height: 21.v),
                          Text("Savannah Nguyen",
                              style: CustomTextStyles.titleMediumSemiBold),
                          SizedBox(height: 4.v),
                          Text("@savannah",
                              style: CustomTextStyles.bodyLargeGray60001),
                          SizedBox(height: 28.v),
                          Container(
                              width: double.maxFinite,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 43.h, vertical: 15.v),
                              decoration: AppDecoration.fillGray100,
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(bottom: 2.v),
                                        child: Column(children: [
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgComponent1Gray60001,
                                              height: 24.adaptSize,
                                              width: 24.adaptSize),
                                          SizedBox(height: 6.v),
                                          Text("Orders",
                                              style: CustomTextStyles
                                                  .bodyMediumBlack900_1)
                                        ])),
                                    CustomImageView(
                                        svgPath:
                                            ImageConstant.imgDividerhorisontal,
                                        height: 50.v,
                                        width: 1.h,
                                        margin: EdgeInsets.only(left: 28.h)),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 28.h, bottom: 2.v),
                                        child: Column(children: [
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgComponent1Gray6000124x24,
                                              height: 24.adaptSize,
                                              width: 24.adaptSize),
                                          SizedBox(height: 6.v),
                                          Text("Events",
                                              style: CustomTextStyles
                                                  .bodyMediumBlack900_1)
                                        ])),
                                    CustomImageView(
                                        svgPath:
                                            ImageConstant.imgDividerhorisontal,
                                        height: 50.v,
                                        width: 1.h,
                                        margin: EdgeInsets.only(left: 28.h)),
                                    Padding(
                                        padding: EdgeInsets.only(left: 22.h),
                                        child: Column(children: [
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgComponent124x24,
                                              height: 24.adaptSize,
                                              width: 24.adaptSize),
                                          SizedBox(height: 8.v),
                                          Text("Payment",
                                              style: CustomTextStyles
                                                  .bodyMediumBlack900_1)
                                        ])),
                                    CustomImageView(
                                        svgPath:
                                            ImageConstant.imgDividerhorisontal,
                                        height: 50.v,
                                        width: 1.h,
                                        margin: EdgeInsets.only(left: 22.h)),
                                    GestureDetector(
                                        onTap: () {
                                          onTapColumnsetting(context);
                                        },
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(left: 27.h),
                                            child: Column(children: [
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgComponent11,
                                                  height: 24.adaptSize,
                                                  width: 24.adaptSize),
                                              SizedBox(height: 7.v),
                                              Text("Setting",
                                                  style: CustomTextStyles
                                                      .bodyMediumBlack900_1)
                                            ])))
                                  ])),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 27.h, top: 77.v, right: 27.h),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Contact",
                                        style: theme.textTheme.titleLarge),
                                    CustomImageView(
                                        svgPath: ImageConstant
                                            .imgComponent1Gray60003,
                                        height: 24.adaptSize,
                                        width: 24.adaptSize)
                                  ])),
                          CustomOutlinedButton(
                              text: "Log out",
                              margin: EdgeInsets.only(
                                  left: 26.h, top: 303.v, right: 26.h),
                              buttonTextStyle:
                                  CustomTextStyles.titleSmallInterGray50)
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

  /// Navigates to the profileSettingScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the profileSettingScreen.
  onTapColumnsetting(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileSettingScreen);
  }
}
