import 'package:flutter_shop_app/utils/snippet.dart';
import 'package:flutter_shop_app/views//favourites_edit_page.dart';
import 'package:flutter_shop_app/views//notifications_page.dart';
import 'package:flutter_shop_app/views//profile_event_page.dart';
import 'package:flutter_shop_app/views//search_searching_page.dart';
import 'package:flutter_shop_app/views//shop_all_page.dart';
import 'package:flutter_shop_app/views//shop_detail_product_page.dart';
import 'package:flutter_shop_app/views//shop_kids_page.dart';
import 'package:flutter_shop_app/widgets/app_bar/appbar_image.dart';
import 'package:flutter_shop_app/widgets/app_bar/appbar_title.dart';
import 'package:flutter_shop_app/widgets/custom_app_bar.dart';
import 'package:flutter_shop_app/widgets/custom_bottom_bar.dart';
import 'package:flutter_shop_app/widgets/custom_button_style.dart';
import 'package:flutter_shop_app/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop_app/widgets/custom_text_style.dart';

class ShopKidsTabContainerScreen extends StatefulWidget {
  const ShopKidsTabContainerScreen({Key? key}) : super(key: key);

  @override
  ShopKidsTabContainerScreenState createState() =>
      ShopKidsTabContainerScreenState();
}

// ignore_for_file: must_be_immutable
class ShopKidsTabContainerScreenState extends State<ShopKidsTabContainerScreen>
    with TickerProviderStateMixin {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                title: AppbarTitle(
                    text: "Home",
                    margin:
                        EdgeInsets.only(left: 26.h, top: 51.v, bottom: 14.v)),
                actions: [
                  AppbarImage(
                      svgPath: ImageConstant.imgNavbagBlack900,
                      margin: EdgeInsets.fromLTRB(26.h, 54.v, 26.h, 17.v),
                      onTap: () {
                        onTapCartone(context);
                      })
                ],
                styleType: Style.bgFill),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgRectangle39820,
                      height: 250.v,
                      width: 428.h),
                  SizedBox(height: 17.v),
                  Text("Nike Air Max 270", style: theme.textTheme.titleMedium),
                  SizedBox(height: 10.v),
                  Text("YOUR SUPPORT SYSTEM",
                      style: theme.textTheme.headlineMedium),
                  Container(
                      width: 371.h,
                      margin:
                          EdgeInsets.only(left: 28.h, top: 4.v, right: 28.h),
                      child: Text(
                          "Legendary Air gets lifted. The lightweight and airy upper and super-low-cut collar make it the perfect go-to for warm-weather fun.",
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.bodyMediumBlack900_1
                              .copyWith(height: 1.71))),
                  SizedBox(height: 5.v),
                  CustomOutlinedButton(
                      height: 48.v,
                      width: 119.h,
                      text: "Buy now",
                      buttonStyle: CustomButtonStyles.outlineBlueGray,
                      buttonTextStyle: CustomTextStyles.titleSmallInterGray50,
                      onTap: () {
                        onTapBuynow(context);
                      }),
                  SizedBox(height: 20.v),
                  Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.symmetric(vertical: 13.v),
                      decoration: AppDecoration.fillWhiteA,
                      child: SizedBox(
                          height: 40.v,
                          width: 412.h,
                          child: TabBar(
                              controller: tabviewController,
                              isScrollable: true,
                              labelColor: appTheme.gray50,
                              labelStyle: TextStyle(
                                  fontSize: 15.fSize,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600),
                              unselectedLabelColor: theme.colorScheme.primary,
                              unselectedLabelStyle: TextStyle(
                                  fontSize: 15.fSize,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600),
                              indicator: BoxDecoration(
                                  color: appTheme.blueGray900,
                                  borderRadius: BorderRadius.circular(8.h)),
                              tabs: [
                                Tab(child: Text("All")),
                                Tab(child: Text("Men")),
                                Tab(child: Text("Women")),
                                Tab(child: Text("Kids")),
                                Tab(child: Text("Jordan"))
                              ]))),
                  SizedBox(
                      height: 792.v,
                      child: TabBarView(
                          controller: tabviewController,
                          children: [
                            ShopAllPage(),
                            ShopAllPage(),
                            ShopAllPage(),
                            ShopKidsPage(),
                            ShopKidsPage()
                          ]))
                ]))),
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

  /// Navigates to the bagItemScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the bagItemScreen.
  onTapCartone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.bagItemPage);
  }

  /// Navigates to the shopDetailProductContainerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the shopDetailProductContainerScreen.
  onTapBuynow(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.shopDetailProductContainerScreen);
  }
}
