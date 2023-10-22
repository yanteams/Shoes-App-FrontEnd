import 'package:flutter_shop_app/utils/snippet.dart';
<<<<<<< HEAD
import 'package:flutter_shop_app/views/bag_item_screen.dart';
=======
import 'package:flutter_shop_app/views/bag_item_page.dart';
>>>>>>> origin/main
import 'package:flutter_shop_app/views/favourites_edit_page.dart';
import 'package:flutter_shop_app/views/shop_detail_product_page.dart';
import 'package:flutter_shop_app/widgets/app_bar/appbar_image_1.dart';
import 'package:flutter_shop_app/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:flutter_shop_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter_shop_app/widgets/custom_bottom_bar.dart';
import 'package:flutter_shop_app/widgets/custom_drop_down.dart';
import 'package:flutter_shop_app/widgets/custom_outlined_button.dart';
import 'package:flutter_shop_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:flutter_shop_app/widgets/custom_text_style.dart';
=======
>>>>>>> origin/main

class CheckOutPaymentNoShowInfoAddedCardScreen extends StatelessWidget {
  CheckOutPaymentNoShowInfoAddedCardScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  List<String> dropdownItemList1 = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  TextEditingController paymentondeliveController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          leadingWidth: 50.h,
          leading: AppbarImage1(
            svgPath: ImageConstant.imgComponent1,
            margin: EdgeInsets.only(
              left: 26.h,
              top: 54.v,
              bottom: 17.v,
            ),
          ),
          centerTitle: true,
          title: AppbarSubtitle1(
            text: "Check out",
            margin: EdgeInsets.only(
              top: 56.v,
              bottom: 19.v,
            ),
          ),
          styleType: Style.bgFill,
        ),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 16.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 5.v),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 26.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 1.v),
                                child: Text(
                                  "Summary",
                                  style: theme.textTheme.titleLarge,
                                ),
                              ),
                              CustomDropDown(
                                width: 139.h,
                                icon: Container(
                                  margin: EdgeInsets.only(left: 10.h),
                                  child: CustomImageView(
                                    svgPath: ImageConstant.imgArrowdown,
                                  ),
                                ),
                                hintText: "414 (2 items)",
                                items: dropdownItemList,
                                onChanged: (value) {},
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 24.v),
                        Divider(),
                        CustomDropDown(
                          icon: Container(
                            margin: EdgeInsets.only(left: 30.h),
                            child: CustomImageView(
                              svgPath: ImageConstant.imgArrowdown,
                            ),
                          ),
                          margin: EdgeInsets.only(
                            left: 26.h,
                            top: 26.v,
                            right: 26.h,
                          ),
                          hintText: "Delivery",
                          hintStyle: theme.textTheme.titleLarge!,
                          items: dropdownItemList1,
                          onChanged: (value) {},
                        ),
                        SizedBox(height: 24.v),
                        Divider(),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 26.h,
                              top: 26.v,
                            ),
                            child: Text(
                              "Payment",
                              style: theme.textTheme.titleLarge,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 26.h,
                            top: 24.v,
                            right: 26.h,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomTextFormField(
                                controller: paymentondeliveController,
                                hintText: "Payment on delivery",
                                prefix: Container(
                                  margin: EdgeInsets.fromLTRB(
                                      21.h, 29.v, 24.h, 29.v),
                                  child: CustomImageView(
                                    svgPath: ImageConstant.imgMaximize,
                                  ),
                                ),
                                prefixConstraints: BoxConstraints(
                                  maxHeight: 82.v,
                                ),
                              ),
                              Container(
                                width: 361.h,
                                margin: EdgeInsets.only(
                                  top: 22.v,
                                  right: 14.h,
                                ),
                                child: Text(
                                  "Please make 100% sure the information you fill in above is correct and pay close attention to your phone.\nThe order processing department will call to confirm the order within 24 hours and proceed to send the goods after successful confirmation.\nIf you call 3 times and do not answer, the order will be automatically canceled. Learn More",
                                  maxLines: 7,
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyles.bodyMediumGray60002
                                      .copyWith(
                                    height: 1.71,
                                  ),
                                ),
                              ),
                              SizedBox(height: 20.v),
                              CustomTextFormField(
                                controller: phoneController,
                                hintText: "Payment by card",
                                textInputAction: TextInputAction.done,
                                prefix: Container(
                                  margin: EdgeInsets.fromLTRB(
                                      21.h, 29.v, 24.h, 29.v),
                                  child: CustomImageView(
                                    svgPath: ImageConstant.imgCreditcard1,
                                  ),
                                ),
                                prefixConstraints: BoxConstraints(
                                  maxHeight: 82.v,
                                ),
                                borderDecoration:
                                    TextFormFieldStyleHelper.outlineGrayTL12,
                                filled: false,
                              ),
                            ],
                          ),
                        ),
                        CustomOutlinedButton(
                          text: "Continue",
                          margin: EdgeInsets.only(
                            left: 26.h,
                            top: 30.v,
                            right: 26.h,
                          ),
                        ),
                        SizedBox(height: 20.v),
                        Divider(),
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
