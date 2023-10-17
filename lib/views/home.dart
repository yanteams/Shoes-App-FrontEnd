import 'package:flutter_shop_app/widgets/app_bar/appbar_image.dart';
import 'package:flutter_shop_app/widgets/app_bar/appbar_title.dart';
import 'package:flutter_shop_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter_shop_app/widgets/custom_bottom_bar.dart';
import 'package:flutter_shop_app/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop_app/utils/snippet.dart';
import 'package:flutter_shop_app/utils/custom_outlined_button.dart';

class ShopAllTabContainerScreen extends StatefulWidget {
  const ShopAllTabContainerScreen({Key? key}) : super(key: key);

  @override
  ShopAllTabContainerScreenState createState() =>
      ShopAllTabContainerScreenState();
}

// ignore_for_file: must_be_immutable
class ShopAllTabContainerScreenState extends State<ShopAllTabContainerScreen>
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
                height: 94.v,
                title: AppbarTitle(
                    text: "Shop", margin: EdgeInsets.only(left: 26.h)),
                actions: [
                  AppbarImage(
                      svgPath: ImageConstant.imgSearch,
                      margin: EdgeInsets.symmetric(
                          horizontal: 26.h, vertical: 16.v))
                ]),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 1.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Column(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgRectangle39820,
                                height: 250.v,
                                width: 428.h),
                            SizedBox(height: 17.v),
                            Text("Nike Air Max 270",
                                style: theme.textTheme.titleMedium),
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
                            SizedBox(height: 12.v),
                            CustomOutlinedButton(
                                height: 48.v,
                                width: 119.h,
                                text: "Shop",
                                buttonStyle: CustomButtonStyles.outlineErrorContainer,
                                buttonTextStyle: CustomTextStyles.titleSmallInterGray50,
                                onTap: () {
                                  onTapShop(context);
                                }),
                            SizedBox(height: 33.v),
                            Container(
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
                                        color: theme.colorScheme.errorContainer,
                                        borderRadius: BorderRadius.circular(8.h)),
                                    tabs: [
                                      Tab(child: Text("All")),
                                      Tab(child: Text("Men")),
                                      Tab(child: Text("Women")),
                                      Tab(child: Text("Kids")),
                                      Tab(child: Text("Jordan"))
                                    ])),
                            SizedBox(
                                height: 805.v,
                                child: TabBarView(
                                    controller: tabviewController,
                                    children: [
                                      ShopAllPage(),
                                      ShopAllPage(),
                                      ShopAllPage(),
                                      ShopKidsPage(),
                                      ShopKidsPage()
                                    ]))
                          ])))
                ])),
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
      case BottomBarEnum.Bag:
        return AppRoutes.bagItemPage;
      case BottomBarEnum.Notifications:
        return "/";
      case BottomBarEnum.Profile:
        return "/";
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
      case AppRoutes.bagItemPage:
        return BagItemPage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the shopDetailProductContainerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the shopDetailProductContainerScreen.
  onTapShop(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.shopDetailProductContainerScreen);
  }
}
