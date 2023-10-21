import 'package:flutter_shop_app/utils/snippet.dart';
import 'package:flutter_shop_app/views/bag_item_screen.dart';
import 'package:flutter_shop_app/views/favourites_edit_page.dart';
import 'package:flutter_shop_app/views/shop_detail_product_page.dart';
import 'package:flutter_shop_app/widgets/app_bar/appbar_image_1.dart';
import 'package:flutter_shop_app/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:flutter_shop_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter_shop_app/widgets/custom_bottom_bar.dart';
import 'package:flutter_shop_app/widgets/custom_checkbox_button.dart';
import 'package:flutter_shop_app/widgets/custom_drop_down.dart';
import 'package:flutter_shop_app/widgets/custom_outlined_button.dart';
import 'package:flutter_shop_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop_app/widgets/custom_text_style.dart';

// ignore_for_file: must_be_immutable
class CheckOutDeliveryScreen extends StatelessWidget {
  CheckOutDeliveryScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  TextEditingController deliveritoneController = TextEditingController();

  TextEditingController nameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  List<String> dropdownItemList1 = ["Item One", "Item Two", "Item Three"];

  List<String> dropdownItemList2 = ["Item One", "Item Two", "Item Three"];

  TextEditingController addressController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  bool checkbox = false;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                        EdgeInsets.only(left: 26.h, top: 54.v, bottom: 17.v)),
                centerTitle: true,
                title: AppbarSubtitle1(
                    text: "Check out",
                    margin: EdgeInsets.only(top: 56.v, bottom: 19.v)),
                styleType: Style.bgFill),
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(children: [
                      SizedBox(height: 16.v),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Padding(
                                  padding: EdgeInsets.only(bottom: 5.v),
                                  child: Column(children: [
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 26.h),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                  padding:
                                                      EdgeInsets.only(top: 1.v),
                                                  child: Text("Summary",
                                                      style: theme.textTheme
                                                          .titleLarge)),
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
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 26.h, top: 26.v, right: 26.h),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("Delivery",
                                                  style: theme
                                                      .textTheme.titleLarge),
                                              SizedBox(height: 26.v),
                                              Text(
                                                  "How would you like to get your order?",
                                                  style: theme
                                                      .textTheme.titleMedium),
                                              SizedBox(height: 18.v),
                                              CustomTextFormField(
                                                  controller:
                                                      deliveritoneController,
                                                  hintText: "Deliver It",
                                                  prefix: Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              21.h,
                                                              29.v,
                                                              24.h,
                                                              29.v),
                                                      child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgMaximize)),
                                                  prefixConstraints:
                                                      BoxConstraints(
                                                          maxHeight: 82.v)),
                                              SizedBox(height: 37.v),
                                              Text(
                                                  "Enter your name and address:",
                                                  style: theme
                                                      .textTheme.titleMedium),
                                              SizedBox(height: 18.v),
                                              CustomTextFormField(
                                                  controller: nameController,
                                                  hintText: "First Name*",
                                                  hintStyle: theme
                                                      .textTheme.bodyMedium!,
                                                  contentPadding:
                                                      EdgeInsets.symmetric(
                                                          horizontal: 17.h,
                                                          vertical: 18.v),
                                                  borderDecoration:
                                                      TextFormFieldStyleHelper
                                                          .outlineGrayTL3),
                                              SizedBox(height: 20.v),
                                              CustomTextFormField(
                                                  controller:
                                                      lastNameController,
                                                  hintText: "Last Name*",
                                                  hintStyle: theme
                                                      .textTheme.bodyMedium!,
                                                  contentPadding:
                                                      EdgeInsets.symmetric(
                                                          horizontal: 17.h,
                                                          vertical: 18.v),
                                                  borderDecoration:
                                                      TextFormFieldStyleHelper
                                                          .outlineGrayTL3),
                                              SizedBox(height: 20.v),
                                              CustomDropDown(
                                                  icon: Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              30.h,
                                                              15.v,
                                                              11.h,
                                                              14.v),
                                                      child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgArrowdown)),
                                                  hintText:
                                                      "Province/Municipality",
                                                  items: dropdownItemList1,
                                                  contentPadding:
                                                      EdgeInsets.only(
                                                          left: 17.h,
                                                          top: 18.v,
                                                          bottom: 18.v),
                                                  onChanged: (value) {}),
                                              SizedBox(height: 20.v),
                                              CustomDropDown(
                                                  icon: Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              30.h,
                                                              15.v,
                                                              11.h,
                                                              14.v),
                                                      child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgArrowdown)),
                                                  hintText: "District/Town",
                                                  items: dropdownItemList2,
                                                  contentPadding:
                                                      EdgeInsets.only(
                                                          left: 17.h,
                                                          top: 18.v,
                                                          bottom: 18.v),
                                                  onChanged: (value) {}),
                                              SizedBox(height: 20.v),
                                              CustomTextFormField(
                                                  controller: addressController,
                                                  hintText: "Address details",
                                                  hintStyle: theme
                                                      .textTheme.bodyMedium!,
                                                  contentPadding:
                                                      EdgeInsets.symmetric(
                                                          horizontal: 17.h,
                                                          vertical: 18.v),
                                                  borderDecoration:
                                                      TextFormFieldStyleHelper
                                                          .outlineGrayTL3),
                                              SizedBox(height: 37.v),
                                              Text(
                                                  "What’s your contact information?",
                                                  style: theme
                                                      .textTheme.titleMedium),
                                              SizedBox(height: 18.v),
                                              CustomTextFormField(
                                                  controller: emailController,
                                                  hintText: "Email",
                                                  hintStyle: theme
                                                      .textTheme.bodyMedium!,
                                                  textInputType: TextInputType
                                                      .emailAddress,
                                                  contentPadding:
                                                      EdgeInsets.symmetric(
                                                          horizontal: 17.h,
                                                          vertical: 18.v),
                                                  borderDecoration:
                                                      TextFormFieldStyleHelper
                                                          .outlineGrayTL3),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 18.h, top: 3.v),
                                                  child: Text(
                                                      "A confirmation email will be sent after checkout.",
                                                      style: CustomTextStyles
                                                          .bodyMediumGray600)),
                                              SizedBox(height: 13.v),
                                              CustomTextFormField(
                                                  controller:
                                                      phoneNumberController,
                                                  hintText: "Phone Number",
                                                  hintStyle: theme
                                                      .textTheme.bodyMedium!,
                                                  textInputAction:
                                                      TextInputAction.done,
                                                  textInputType:
                                                      TextInputType.phone,
                                                  contentPadding:
                                                      EdgeInsets.symmetric(
                                                          horizontal: 17.h,
                                                          vertical: 18.v),
                                                  borderDecoration:
                                                      TextFormFieldStyleHelper
                                                          .outlineGrayTL3),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 18.h, top: 4.v),
                                                  child: Text(
                                                      "A carrier might contact you confirm delivery.",
                                                      style: CustomTextStyles
                                                          .bodyMediumGray600)),
                                              CustomCheckboxButton(
                                                  text:
                                                      "I have read and consent to eShopWorld processing my information in accordance with the Privacy Statement and Cookie Policy. eShopWorld is a trusted Nike partner.",
                                                  isExpandedText: true,
                                                  value: checkbox,
                                                  margin: EdgeInsets.only(
                                                      top: 38.v, right: 7.h),
                                                  textStyle: theme
                                                      .textTheme.bodyMedium,
                                                  onChange: (value) {
                                                    checkbox = value;
                                                  })
                                            ])),
                                    CustomOutlinedButton(
                                        text: "Continue",
                                        margin: EdgeInsets.only(
                                            left: 26.h, top: 30.v, right: 26.h),
                                        onTap: () {
                                          onTapContinue(context);
                                        }),
                                    SizedBox(height: 20.v),
                                    Divider()
                                  ]))))
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

  /// Navigates to the checkOutPaymentNoShowInfoAddedCardScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the checkOutPaymentNoShowInfoAddedCardScreen.
  onTapContinue(BuildContext context) {
    Navigator.pushNamed(
        context, AppRoutes.checkOutPaymentNoShowInfoAddedCardScreen);
  }
}
