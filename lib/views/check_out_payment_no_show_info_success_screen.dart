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
import 'package:flutter/material.dart';
import 'package:flutter_shop_app/widgets/custom_text_style.dart';

class CheckOutPaymentNoShowInfoSuccessScreen extends StatelessWidget {
  CheckOutPaymentNoShowInfoSuccessScreen({Key? key})
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
          height: 94.v,
          leadingWidth: 50.h,
          leading: AppbarImage1(
            svgPath: ImageConstant.imgComponent1,
            margin: EdgeInsets.only(
              left: 26.h,
              top: 16.v,
              bottom: 16.v,
            ),
          ),
          centerTitle: true,
          title: AppbarSubtitle(
            text: "Check out",
          ),
        ),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 154.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 87.h,
                      bottom: 5.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            height: 10.adaptSize,
                            width: 10.adaptSize,
                            decoration: BoxDecoration(
                              color: appTheme.lightGreen100,
                              borderRadius: BorderRadius.circular(
                                5.h,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 10.adaptSize,
                          width: 10.adaptSize,
                          margin: EdgeInsets.only(
                            left: 61.h,
                            top: 10.v,
                          ),
                          decoration: BoxDecoration(
                            color: appTheme.deepPurple100,
                            borderRadius: BorderRadius.circular(
                              5.h,
                            ),
                          ),
                        ),
                        SizedBox(height: 24.v),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 3.h),
                                    child: Row(
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  height: 14.adaptSize,
                                                  width: 14.adaptSize,
                                                  margin: EdgeInsets.only(
                                                    top: 35.v,
                                                    bottom: 49.v,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: appTheme.cyan100,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      7.h,
                                                    ),
                                                  ),
                                                ),
                                                CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgCheckmarkGreen800,
                                                  height: 43.adaptSize,
                                                  width: 43.adaptSize,
                                                ),
                                                Container(
                                                  height: 10.adaptSize,
                                                  width: 10.adaptSize,
                                                  margin: EdgeInsets.only(
                                                    left: 35.h,
                                                    top: 35.v,
                                                    bottom: 49.v,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: appTheme.purple100,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      5.h,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                left: 39.h,
                                                top: 4.v,
                                              ),
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    height: 11.adaptSize,
                                                    width: 11.adaptSize,
                                                    margin: EdgeInsets.only(
                                                        bottom: 17.v),
                                                    decoration: BoxDecoration(
                                                      color: appTheme.lime200,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                        5.h,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      left: 35.h,
                                                      top: 4.v,
                                                    ),
                                                    child: Text(
                                                      "Success",
                                                      style: CustomTextStyles
                                                          .titleLargeGreen800,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Container(
                                          height: 11.adaptSize,
                                          width: 11.adaptSize,
                                          margin: EdgeInsets.only(
                                            left: 3.h,
                                            top: 95.v,
                                            bottom: 24.v,
                                          ),
                                          decoration: BoxDecoration(
                                            color: appTheme.orange200,
                                            borderRadius: BorderRadius.circular(
                                              5.h,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 13.v),
                                  SizedBox(
                                    width: 254.h,
                                    child: Text(
                                      "Your order has been placed successfully. Thank you for purchasing Nike products.",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: CustomTextStyles
                                          .bodyMediumBlack900_1
                                          .copyWith(
                                        height: 1.71,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 18.v),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "View Order",
                                      style:
                                          CustomTextStyles.titleMediumSemiBold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgNikelid512x512148x3,
                              height: 148.v,
                              width: 3.h,
                              margin: EdgeInsets.only(
                                left: 83.h,
                                top: 69.v,
                                bottom: 12.v,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
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
