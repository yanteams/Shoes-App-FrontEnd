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
import 'package:flutter_shop_app/widgets/custom_checkbox_button.dart';
import 'package:flutter_shop_app/widgets/custom_drop_down.dart';
import 'package:flutter_shop_app/widgets/custom_outlined_button.dart';
import 'package:flutter_shop_app/widgets/custom_radio_button.dart';
import 'package:flutter_shop_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:flutter_shop_app/widgets/custom_text_style.dart';
=======
>>>>>>> origin/main

class CheckOutPaymentNoShowInfoAddedCardChooseCardScreen
    extends StatelessWidget {
  CheckOutPaymentNoShowInfoAddedCardChooseCardScreen({Key? key})
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

  TextEditingController paymentbycardController = TextEditingController();

  String radioGroup = "";

  List<String> radioList = [];

  TextEditingController nameController = TextEditingController();

  List<String> dropdownItemList2 = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  TextEditingController zipcodeController = TextEditingController();

  TextEditingController cityController = TextEditingController();

  bool billingaddressi = false;

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
                              left: 25.h,
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
                            left: 25.h,
                            top: 24.v,
                            right: 25.h,
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
                                borderDecoration:
                                    TextFormFieldStyleHelper.outlineGrayTL12,
                                filled: false,
                              ),
                              SizedBox(height: 20.v),
                              CustomTextFormField(
                                controller: paymentbycardController,
                                hintText: "Payment by card",
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
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    top: 23.v,
                                    right: 4.h,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      CustomImageView(
                                        svgPath:
                                            ImageConstant.imgComponent1Black900,
                                        height: 18.adaptSize,
                                        width: 18.adaptSize,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 3.h),
                                        child: Text(
                                          " Add new",
                                          style: CustomTextStyles
                                              .titleMediumSemiBold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 16.v),
                              Row(
                                children: [
                                  CustomRadioButton(
                                    value: radioList[0],
                                    groupValue: radioGroup,
                                    onChange: (value) {
                                      radioGroup = value;
                                    },
                                  ),
                                  CustomRadioButton(
                                    value: radioList[1],
                                    groupValue: radioGroup,
                                    margin: EdgeInsets.only(left: 6.h),
                                    onChange: (value) {
                                      radioGroup = value;
                                    },
                                  ),
                                ],
                              ),
                              SizedBox(height: 11.v),
                              Text(
                                "Card holder name",
                                style: CustomTextStyles.titleMediumGray900,
                              ),
                              SizedBox(height: 12.v),
                              CustomTextFormField(
                                controller: nameController,
                                hintText: "Savannah Nguyen",
                                hintStyle:
                                    CustomTextStyles.bodyMediumBluegray500,
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 17.h,
                                  vertical: 12.v,
                                ),
                                borderDecoration:
                                    TextFormFieldStyleHelper.outlineGrayTL31,
                              ),
                              SizedBox(height: 24.v),
                              Text(
                                "Billing address",
                                style: CustomTextStyles.titleMediumGray900,
                              ),
                              SizedBox(height: 10.v),
                              CustomDropDown(
                                icon: Container(
                                  margin:
                                      EdgeInsets.fromLTRB(30.h, 8.v, 11.h, 8.v),
                                  child: CustomImageView(
                                    svgPath: ImageConstant.imgArrowdown,
                                  ),
                                ),
                                hintText: "Vietnam",
                                hintStyle:
                                    CustomTextStyles.bodyMediumBluegray500,
                                items: dropdownItemList2,
                                contentPadding: EdgeInsets.only(
                                  left: 17.h,
                                  top: 12.v,
                                  bottom: 12.v,
                                ),
                                borderDecoration:
                                    DropDownStyleHelper.outlineGrayTL31,
                                onChanged: (value) {},
                              ),
                              SizedBox(height: 24.v),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.only(right: 5.h),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Zip code",
                                            style: CustomTextStyles
                                                .titleMediumGray900,
                                          ),
                                          SizedBox(height: 10.v),
                                          CustomTextFormField(
                                            width: 184.h,
                                            controller: zipcodeController,
                                            hintText: "Ex.65323",
                                            hintStyle: CustomTextStyles
                                                .bodyMediumBluegray500,
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                              horizontal: 17.h,
                                              vertical: 12.v,
                                            ),
                                            borderDecoration:
                                                TextFormFieldStyleHelper
                                                    .outlineGrayTL31,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 5.h),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "City",
                                            style: CustomTextStyles
                                                .titleMediumGray900,
                                          ),
                                          SizedBox(height: 10.v),
                                          CustomTextFormField(
                                            width: 184.h,
                                            controller: cityController,
                                            hintText: "Ho Chi Minh",
                                            hintStyle: CustomTextStyles
                                                .bodyMediumBluegray500,
                                            textInputAction:
                                                TextInputAction.done,
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                              horizontal: 17.h,
                                              vertical: 12.v,
                                            ),
                                            borderDecoration:
                                                TextFormFieldStyleHelper
                                                    .outlineGrayTL31,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              CustomCheckboxButton(
                                text: "Billing address is same as shipping",
                                value: billingaddressi,
                                margin: EdgeInsets.only(
                                  top: 23.v,
                                  right: 96.h,
                                ),
                                textStyle: CustomTextStyles.bodyLargeGray60002,
                                onChange: (value) {
                                  billingaddressi = value;
                                },
                              ),
                            ],
                          ),
                        ),
                        CustomOutlinedButton(
                          text: "Continue",
                          margin: EdgeInsets.only(
                            left: 26.h,
                            top: 29.v,
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
