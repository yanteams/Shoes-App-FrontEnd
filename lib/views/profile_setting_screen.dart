import 'package:flutter_shop_app/utils/snippet.dart';
import 'package:flutter_shop_app/views/favourites_edit_page.dart';
import 'package:flutter_shop_app/views/notifications_page.dart';
import 'package:flutter_shop_app/views/profile_event_page.dart';
import 'package:flutter_shop_app/views/search_searching_page.dart';
import 'package:flutter_shop_app/views/shop_detail_product_page.dart';
import 'package:flutter_shop_app/widgets/app_bar/appbar_image_1.dart';
import 'package:flutter_shop_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:flutter_shop_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop_app/widgets/custom_bottom_bar.dart';
import 'package:flutter_shop_app/widgets/custom_button_style.dart';
import 'package:flutter_shop_app/widgets/custom_icon_button.dart';
import 'package:flutter_shop_app/widgets/custom_outlined_button.dart';
import 'package:flutter_shop_app/widgets/custom_switch.dart';
import 'package:flutter_shop_app/widgets/custom_text_form_field.dart';
import 'package:flutter_shop_app/widgets/custom_text_style.dart';

// ignore_for_file: must_be_immutable
class ProfileSettingScreen extends StatelessWidget {
  ProfileSettingScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController newpasswordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  bool isSelectedSwitch = false;

  bool isSelectedSwitch1 = false;

  bool isSelectedSwitch2 = false;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: 94.v,
                leadingWidth: 50.h,
                leading: AppbarImage1(
                    svgPath: ImageConstant.imgComponent1,
                    margin:
                        EdgeInsets.only(left: 26.h, top: 16.v, bottom: 16.v),
                    onTap: () {
                      onTapImage(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle(text: "Setting")),
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(children: [
                      SizedBox(height: 13.v),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 26.h, right: 26.h, bottom: 5.v),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Profile information",
                                            style: theme.textTheme.titleLarge),
                                        SizedBox(height: 28.v),
                                        Align(
                                            alignment: Alignment.center,
                                            child: SizedBox(
                                                height: 79.v,
                                                width: 85.h,
                                                child: Stack(
                                                    alignment:
                                                        Alignment.topRight,
                                                    children: [
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgEllipse227,
                                                          height: 79.adaptSize,
                                                          width: 79.adaptSize,
                                                          radius: BorderRadius
                                                              .circular(39.h),
                                                          alignment: Alignment
                                                              .centerLeft),
                                                      CustomIconButton(
                                                          height: 24.adaptSize,
                                                          width: 24.adaptSize,
                                                          padding:
                                                              EdgeInsets.all(
                                                                  4.h),
                                                          decoration:
                                                              IconButtonStyleHelper
                                                                  .outlineBlack,
                                                          alignment: Alignment
                                                              .topRight,
                                                          child: CustomImageView(
                                                              svgPath: ImageConstant
                                                                  .imgComponent1Gray6000324x24))
                                                    ]))),
                                        SizedBox(height: 23.v),
                                        CustomOutlinedButton(
                                            height: 48.v,
                                            width: 171.h,
                                            text: "Upload Image",
                                            leftIcon: Container(
                                                margin:
                                                    EdgeInsets.only(right: 8.h),
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgComponent1Black900)),
                                            buttonStyle: CustomButtonStyles
                                                .outlineGrayTL121,
                                            buttonTextStyle: CustomTextStyles
                                                .titleSmallInterPrimary,
                                            alignment: Alignment.center),
                                        SizedBox(height: 27.v),
                                        Text("First Name",
                                            style: theme.textTheme.titleMedium),
                                        SizedBox(height: 12.v),
                                        CustomTextFormField(
                                            controller: firstNameController,
                                            hintText: "Savannah",
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    horizontal: 17.h,
                                                    vertical: 18.v)),
                                        SizedBox(height: 19.v),
                                        Text("Last Name",
                                            style: theme.textTheme.titleMedium),
                                        SizedBox(height: 12.v),
                                        CustomTextFormField(
                                            controller: lastNameController,
                                            hintText: "Nguyen",
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    horizontal: 17.h,
                                                    vertical: 19.v)),
                                        SizedBox(height: 19.v),
                                        Text("Email",
                                            style: theme.textTheme.titleMedium),
                                        SizedBox(height: 12.v),
                                        CustomTextFormField(
                                            controller: emailController,
                                            hintText: "savannah@example.com",
                                            textInputType:
                                                TextInputType.emailAddress,
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    horizontal: 17.h,
                                                    vertical: 18.v)),
                                        SizedBox(height: 19.v),
                                        Text("Number Phone",
                                            style: theme.textTheme.titleMedium),
                                        SizedBox(height: 12.v),
                                        CustomTextFormField(
                                            controller: phoneController,
                                            hintText: "0749 406 164",
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    horizontal: 17.h,
                                                    vertical: 18.v)),
                                        SizedBox(height: 40.v),
                                        Text("Login",
                                            style: theme.textTheme.titleLarge),
                                        SizedBox(height: 22.v),
                                        CustomTextFormField(
                                            controller: passwordController,
                                            hintText: "Old Password",
                                            textInputType:
                                                TextInputType.visiblePassword,
                                            suffix: Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    30.h, 15.v, 12.h, 14.v),
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgComponent2)),
                                            suffixConstraints:
                                                BoxConstraints(maxHeight: 53.v),
                                            obscureText: true,
                                            contentPadding: EdgeInsets.only(
                                                left: 17.h,
                                                top: 18.v,
                                                bottom: 18.v)),
                                        SizedBox(height: 24.v),
                                        CustomTextFormField(
                                            controller: newpasswordController,
                                            hintText: "New Password",
                                            textInputType:
                                                TextInputType.visiblePassword,
                                            suffix: Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    30.h, 15.v, 12.h, 14.v),
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgComponent2)),
                                            suffixConstraints:
                                                BoxConstraints(maxHeight: 53.v),
                                            obscureText: true,
                                            contentPadding: EdgeInsets.only(
                                                left: 17.h,
                                                top: 18.v,
                                                bottom: 18.v)),
                                        SizedBox(height: 24.v),
                                        CustomTextFormField(
                                            controller:
                                                confirmpasswordController,
                                            hintText: "Confirm Password",
                                            textInputAction:
                                                TextInputAction.done,
                                            textInputType:
                                                TextInputType.visiblePassword,
                                            suffix: Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    30.h, 15.v, 12.h, 14.v),
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgComponent2)),
                                            suffixConstraints:
                                                BoxConstraints(maxHeight: 53.v),
                                            obscureText: true,
                                            contentPadding: EdgeInsets.only(
                                                left: 17.h,
                                                top: 18.v,
                                                bottom: 18.v)),
                                        SizedBox(height: 40.v),
                                        CustomOutlinedButton(
                                            text: "Update Password",
                                            buttonStyle: CustomButtonStyles
                                                .outlineGrayTL362,
                                            buttonTextStyle: CustomTextStyles
                                                .titleSmallInterPrimary),
                                        SizedBox(height: 38.v),
                                        Text("Notifications",
                                            style: theme.textTheme.titleLarge),
                                        SizedBox(height: 21.v),
                                        Row(children: [
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  top: 3.v, bottom: 2.v),
                                              child: Text(
                                                  "Notification when new products are updated.",
                                                  style: CustomTextStyles
                                                      .titleSmallBluegray40001)),
                                          CustomSwitch(
                                              margin:
                                                  EdgeInsets.only(left: 37.h),
                                              value: isSelectedSwitch,
                                              onChange: (value) {
                                                isSelectedSwitch = value;
                                              })
                                        ]),
                                        SizedBox(height: 24.v),
                                        Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 2.v, bottom: 3.v),
                                                  child: Text(
                                                      "Notification when there is a discount event.",
                                                      style: CustomTextStyles
                                                          .titleSmallBluegray40001)),
                                              CustomSwitch(
                                                  margin: EdgeInsets.only(
                                                      left: 47.h),
                                                  value: isSelectedSwitch1,
                                                  onChange: (value) {
                                                    isSelectedSwitch1 = value;
                                                  })
                                            ]),
                                        SizedBox(height: 24.v),
                                        Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                  width: 253.h,
                                                  margin:
                                                      EdgeInsets.only(top: 2.v),
                                                  child: Text(
                                                      "Notification when someone replies to a comment.",
                                                      maxLines: 2,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: CustomTextStyles
                                                          .titleSmallBluegray40001
                                                          .copyWith(
                                                              height: 1.60))),
                                              CustomSwitch(
                                                  margin: EdgeInsets.only(
                                                      left: 74.h, bottom: 26.v),
                                                  value: isSelectedSwitch2,
                                                  onChange: (value) {
                                                    isSelectedSwitch2 = value;
                                                  })
                                            ]),
                                        SizedBox(height: 38.v),
                                        CustomOutlinedButton(
                                            text: "Save",
                                            buttonTextStyle: CustomTextStyles
                                                .titleSmallInterGray50,
                                            onTap: () {
                                              onTapSave(context);
                                            })
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

  /// Navigates to the profileScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the profileScreen.
  onTapImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }

  /// Navigates to the profileScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the profileScreen.
  onTapSave(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }
}
