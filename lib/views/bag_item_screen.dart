import 'package:flutter_shop_app/models/productprofile1_item_widget.dart';
import 'package:flutter_shop_app/utils/snippet.dart';
import 'package:flutter_shop_app/views/favourites_edit_page.dart';
import 'package:flutter_shop_app/views/notifications_page.dart';
import 'package:flutter_shop_app/views/profile_event_page.dart';
import 'package:flutter_shop_app/views/search_searching_page.dart';
import 'package:flutter_shop_app/views/shop_detail_product_page.dart';
import 'package:flutter_shop_app/widgets/app_bar/appbar_image_1.dart';
import 'package:flutter_shop_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:flutter_shop_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter_shop_app/widgets/custom_bottom_bar.dart';
import 'package:flutter_shop_app/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class BagItemPage extends StatelessWidget {
  BagItemPage({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: 50.h,
                leading: AppbarImage1(
                    svgPath: ImageConstant.imgComponent1,
                    margin:
                        EdgeInsets.only(left: 26.h, top: 54.v, bottom: 17.v)),
                centerTitle: true,
                title: AppbarSubtitle(
                    text: "Bag",
                    margin: EdgeInsets.only(top: 55.v, bottom: 15.v)),
                styleType: Style.bgFill),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: EdgeInsets.only(left: 26.h, bottom: 5.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(children: [
                                Expanded(
                                    child: ListView.separated(
                                        physics: NeverScrollableScrollPhysics(),
                                        shrinkWrap: true,
                                        separatorBuilder: (context, index) {
                                          return SizedBox(height: 8.v);
                                        },
                                        itemCount: 2,
                                        itemBuilder: (context, index) {
                                          return Productprofile1ItemWidget();
                                        })),
                                Container(
                                    height: 150.v,
                                    width: 88.h,
                                    margin: EdgeInsets.only(
                                        left: 36.h, bottom: 1.v),
                                    decoration: BoxDecoration(
                                        color: appTheme.gray20001)),
                                SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    padding: EdgeInsets.only(bottom: 1.v),
                                    child: IntrinsicWidth(
                                        child: Container(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 63.v),
                                            decoration: AppDecoration.fillGray,
                                            child: Row(children: [
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgComponent2Black900,
                                                  height: 24.adaptSize,
                                                  width: 24.adaptSize),
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgTrash,
                                                  height: 24.adaptSize,
                                                  width: 24.adaptSize,
                                                  margin: EdgeInsets.only(
                                                      left: 64.h))
                                            ]))))
                              ]),
                              SizedBox(height: 8.v),
                              SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: IntrinsicWidth(
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                        Container(
                                            height: 150.v,
                                            width: 88.h,
                                            margin:
                                                EdgeInsets.only(bottom: 1.v),
                                            decoration: BoxDecoration(
                                                color: appTheme.gray20001)),
                                        Container(
                                            width: 88.h,
                                            margin:
                                                EdgeInsets.only(bottom: 1.v),
                                            padding: EdgeInsets.symmetric(
                                                vertical: 63.v),
                                            decoration: AppDecoration.fillGray,
                                            child: Row(children: [
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgComponent2Black900,
                                                  height: 24.adaptSize,
                                                  width: 24.adaptSize),
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgTrash,
                                                  height: 24.adaptSize,
                                                  width: 24.adaptSize,
                                                  margin: EdgeInsets.only(
                                                      left: 64.h))
                                            ]))
                                      ]))),
                              Padding(
                                  padding:
                                      EdgeInsets.only(top: 8.v, right: 26.h),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Subtotal ",
                                            style: theme.textTheme.bodyLarge),
                                        Text("414",
                                            style: theme.textTheme.bodyLarge)
                                      ])),
                              Padding(
                                  padding:
                                      EdgeInsets.only(top: 5.v, right: 26.h),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(top: 1.v),
                                            child: Text("Shipping",
                                                style:
                                                    theme.textTheme.bodyLarge)),
                                        Text("Standard - Free",
                                            style: theme.textTheme.bodyLarge)
                                      ])),
                              Padding(
                                  padding:
                                      EdgeInsets.only(top: 4.v, right: 26.h),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Total",
                                            style: theme.textTheme.titleMedium),
                                        Text("414",
                                            style: theme.textTheme.titleMedium)
                                      ])),
                              CustomOutlinedButton(
                                  text: "Check out",
                                  margin:
                                      EdgeInsets.only(top: 30.v, right: 26.h),
                                  onTap: () {
                                    onTapCheckout(context);
                                  })
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

  /// Navigates to the checkOutDeliveryScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the checkOutDeliveryScreen.
  onTapCheckout(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.checkOutDeliveryScreen);
  }
}
