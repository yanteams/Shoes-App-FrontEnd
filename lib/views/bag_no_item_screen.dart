import 'package:flutter_shop_app/utils/snippet.dart';
<<<<<<< HEAD
import 'package:flutter_shop_app/views/bag_item_screen.dart';
=======
import 'package:flutter_shop_app/views/bag_item_page.dart';
>>>>>>> origin/main
import 'package:flutter_shop_app/views/favourites_edit_page.dart';
import 'package:flutter_shop_app/views/shop_detail_product_page.dart';
import 'package:flutter_shop_app/widgets/app_bar/appbar_image.dart';
import 'package:flutter_shop_app/widgets/app_bar/appbar_title.dart';
import 'package:flutter_shop_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter_shop_app/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:flutter_shop_app/widgets/custom_text_style.dart';
=======
>>>>>>> origin/main

class BagNoItemScreen extends StatelessWidget {
  BagNoItemScreen({Key? key})
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
            text: "Bag",
            margin: EdgeInsets.only(
              left: 26.h,
              top: 53.v,
              bottom: 12.v,
            ),
          ),
          actions: [
            AppbarImage(
              svgPath: ImageConstant.imgSearch,
              margin: EdgeInsets.fromLTRB(26.h, 54.v, 26.h, 17.v),
            ),
          ],
          styleType: Style.bgFill,
        ),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 223.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 120.h,
                      right: 120.h,
                      bottom: 5.v,
                    ),
                    child: Column(
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgNavbagBlack900,
                          height: 38.adaptSize,
                          width: 38.adaptSize,
                        ),
                        SizedBox(height: 15.v),
                        SizedBox(
                          width: 187.h,
                          child: Text(
                            "Your bag is empty.\nWhen you add products they’ll\nappear here.",
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
}
