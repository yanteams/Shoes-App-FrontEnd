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
import 'package:flutter_shop_app/widgets/custom_drop_down.dart';
import 'package:flutter_shop_app/widgets/custom_outlined_button.dart';
import 'package:flutter_shop_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class CheckOutPaymentNoShowInfoNoAddCardOneScreen extends StatelessWidget {
  CheckOutPaymentNoShowInfoNoAddCardOneScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  List<String> dropdownItemList1 = ["Item One", "Item Two", "Item Three"];

  TextEditingController paymentondeliveController = TextEditingController();

  TextEditingController paymentbycardController = TextEditingController();

  TextEditingController addnewcreditcarController = TextEditingController();

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
                    margin:
                        EdgeInsets.only(left: 26.h, top: 54.v, bottom: 17.v),
                    onTap: () {
                      onTapImage(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle(
                    text: "Check out",
                    margin: EdgeInsets.only(top: 53.v, bottom: 17.v)),
                styleType: Style.bgFill),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 16.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(bottom: 5.v),
                              child: Column(children: [
                                Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 26.h),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(top: 1.v),
                                              child: Text("Summary",
                                                  style: theme
                                                      .textTheme.titleLarge)),
                                          CustomDropDown(
                                              width: 139.h,
                                              icon: Container(
                                                  margin: EdgeInsets.only(
                                                      left: 10.h),
                                                  child: CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowdown)),
                                              hintText: "414 (2 items)",
                                              items: dropdownItemList,
                                              onChanged: (value) {})
                                        ])),
                                SizedBox(height: 24.v),
                                Divider(),
                                CustomDropDown(
                                    icon: Container(
                                        margin: EdgeInsets.only(left: 30.h),
                                        child: CustomImageView(
                                            svgPath:
                                                ImageConstant.imgArrowdown)),
                                    margin: EdgeInsets.only(
                                        left: 26.h, top: 26.v, right: 26.h),
                                    hintText: "Delivery",
                                    hintStyle: theme.textTheme.titleLarge!,
                                    items: dropdownItemList1,
                                    onChanged: (value) {}),
                                SizedBox(height: 24.v),
                                Divider(),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 26.h, top: 26.v),
                                        child: Text("Payment",
                                            style:
                                                theme.textTheme.titleLarge))),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 26.h, top: 24.v, right: 26.h),
                                    child: Column(children: [
                                      CustomTextFormField(
                                          controller: paymentondeliveController,
                                          hintText: "Payment on delivery",
                                          prefix: Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  21.h, 29.v, 24.h, 29.v),
                                              child: CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgMaximize)),
                                          prefixConstraints:
                                              BoxConstraints(maxHeight: 82.v)),
                                      SizedBox(height: 20.v),
                                      CustomTextFormField(
                                          controller: paymentbycardController,
                                          hintText: "Payment by card",
                                          prefix: Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  21.h, 29.v, 24.h, 29.v),
                                              child: CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgCreditcard1)),
                                          prefixConstraints:
                                              BoxConstraints(maxHeight: 82.v)),
                                      SizedBox(height: 20.v),
                                      CustomTextFormField(
                                          controller: addnewcreditcarController,
                                          hintText: "Add new Credit Card",
                                          textInputAction: TextInputAction.done,
                                          prefix: Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  21.h, 29.v, 24.h, 29.v),
                                              child: CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgComponent1Black900)),
                                          prefixConstraints:
                                              BoxConstraints(maxHeight: 82.v),
                                          borderDecoration:
                                              TextFormFieldStyleHelper
                                                  .outlineGrayTL121,
                                          filled: false)
                                    ])),
                                CustomOutlinedButton(
                                    text: "Payment",
                                    margin: EdgeInsets.only(
                                        left: 26.h, top: 30.v, right: 26.h),
                                    onTap: () {
                                      onTapPayment(context);
                                    }),
                                SizedBox(height: 20.v),
                                Divider()
                              ]))))
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
  onTapImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.bagItemPage);
  }

  /// Navigates to the checkOutPaymentNoShowInfoLoadingScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the checkOutPaymentNoShowInfoLoadingScreen.
  onTapPayment(BuildContext context) {
    Navigator.pushNamed(
        context, AppRoutes.checkOutPaymentNoShowInfoLoadingScreen);
  }
}
