import 'package:flutter_shop_app/models/productprofile_item_widget.dart';
import 'package:flutter_shop_app/utils/snippet.dart';
import 'package:flutter_shop_app/widgets/app_bar/appbar_image.dart';
import 'package:flutter_shop_app/widgets/app_bar/appbar_image_1.dart';
import 'package:flutter_shop_app/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:flutter_shop_app/widgets/custom_app_bar.dart';
import 'package:flutter_shop_app/widgets/custom_button_style.dart';
import 'package:flutter_shop_app/widgets/custom_drop_down.dart';
import 'package:flutter_shop_app/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop_app/widgets/custom_text_style.dart';

// ignore_for_file: must_be_immutable
class ShopDetailProductPage extends StatelessWidget {
  ShopDetailProductPage({Key? key}) : super(key: key);

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

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
                        EdgeInsets.only(left: 26.h, top: 54.v, bottom: 17.v),
                    onTap: () {
                      onTapImage(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle1(
                    text: "Nike Air Max 270",
                    margin: EdgeInsets.only(top: 56.v, bottom: 19.v)),
                actions: [
                  AppbarImage(
                      svgPath: ImageConstant.imgSearch,
                      margin: EdgeInsets.fromLTRB(26.h, 54.v, 26.h, 17.v))
                ],
                styleType: Style.bgFill),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 5.v),
                        child: Column(children: [
                          SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: IntrinsicWidth(
                                  child: Column(children: [
                                Container(
                                    width: double.maxFinite,
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 46.h),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                              height: 473.v,
                                              width: double.maxFinite,
                                              child: Stack(
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgRectangle39824204x204,
                                                        height: 473.v,
                                                        width: 428.h,
                                                        alignment:
                                                            Alignment.center),
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgFrame427323245,
                                                        height: 1.v,
                                                        width: 92.h,
                                                        alignment: Alignment
                                                            .bottomRight,
                                                        margin: EdgeInsets.only(
                                                            right: 157.h,
                                                            bottom: 45.v))
                                                  ])),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgRectangle39826,
                                              height: 473.v,
                                              width: 428.h),
                                          Spacer(),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgRectangle39827,
                                              height: 473.v,
                                              width: 1.h),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgRectangle39828,
                                              height: 473.v,
                                              width: 1.h)
                                        ])),
                                SizedBox(height: 10.v),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgRectangle39828167x167,
                                          height: 167.adaptSize,
                                          width: 167.adaptSize),
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgRectangle39827167x167,
                                          height: 167.adaptSize,
                                          width: 167.adaptSize,
                                          margin: EdgeInsets.only(left: 10.h))
                                    ])
                              ]))),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 27.h, top: 37.v),
                                  child: Text("Men’s Shoes",
                                      style: CustomTextStyles
                                          .titleMediumSemiBold))),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 27.h, top: 9.v),
                                  child: Text("Nike Air Max 270",
                                      style: theme.textTheme.titleLarge))),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 27.h, top: 17.v),
                                  child: Text("249",
                                      style: CustomTextStyles
                                          .titleMediumSemiBold))),
                          Container(
                              width: 374.h,
                              margin: EdgeInsets.only(
                                  left: 27.h, top: 15.v, right: 26.h),
                              child: Text(
                                  "Nike's first lifestyle Air Max brings you style, comfort and big attitude in the Nike Air Max 270. The design draws inspiration from Air Max icons, showcasing Nike's greatest innovation with its large window and fresh array of colours.\n\nColour Shown: Black/White/Solar Red/Anthracite\nStyle: AH8050-002",
                                  maxLines: 7,
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyles.bodyMediumBlack900_1
                                      .copyWith(height: 1.50))),
                          CustomDropDown(
                              icon: Container(
                                  margin: EdgeInsets.fromLTRB(
                                      8.h, 24.v, 30.h, 24.v),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgArrowdown)),
                              margin: EdgeInsets.only(
                                  left: 27.h, top: 41.v, right: 26.h),
                              hintText: "Size EU",
                              hintStyle: CustomTextStyles.titleMediumPrimary,
                              items: dropdownItemList,
                              contentPadding: EdgeInsets.only(
                                  left: 30.h, top: 26.v, bottom: 26.v),
                              onChanged: (value) {}),
                          CustomOutlinedButton(
                              text: "Add to Bag",
                              margin: EdgeInsets.only(
                                  left: 27.h, top: 14.v, right: 26.h)),
                          CustomOutlinedButton(
                              text: "Favourite",
                              margin: EdgeInsets.only(
                                  left: 27.h, top: 14.v, right: 26.h),
                              rightIcon: Container(
                                  margin: EdgeInsets.only(left: 8.h),
                                  child: CustomImageView(
                                      svgPath:
                                          ImageConstant.imgComponent2Black900)),
                              buttonStyle: CustomButtonStyles.outlineGrayTL36,
                              buttonTextStyle:
                                  CustomTextStyles.titleMediumPrimary),
                          Padding(
                              padding: EdgeInsets.only(top: 19.v),
                              child: Divider(indent: 26.h, endIndent: 26.h)),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 26.h, top: 37.v, right: 26.h),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(children: [
                                      Padding(
                                          padding: EdgeInsets.only(bottom: 1.v),
                                          child: Text("Reviews",
                                              style:
                                                  theme.textTheme.titleLarge)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 5.h, top: 1.v),
                                          child: Text("(70)",
                                              style:
                                                  theme.textTheme.titleLarge)),
                                      Spacer(),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgRatingunit,
                                          height: 16.adaptSize,
                                          width: 16.adaptSize,
                                          margin: EdgeInsets.symmetric(
                                              vertical: 4.v)),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgRatingunit,
                                          height: 16.adaptSize,
                                          width: 16.adaptSize,
                                          margin: EdgeInsets.symmetric(
                                              vertical: 4.v)),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgRatingunit,
                                          height: 16.adaptSize,
                                          width: 16.adaptSize,
                                          margin: EdgeInsets.symmetric(
                                              vertical: 4.v)),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgRatingunit,
                                          height: 16.adaptSize,
                                          width: 16.adaptSize,
                                          margin: EdgeInsets.symmetric(
                                              vertical: 4.v)),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgRatingunit,
                                          height: 16.adaptSize,
                                          width: 16.adaptSize,
                                          margin: EdgeInsets.symmetric(
                                              vertical: 4.v)),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgArrowdown,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize,
                                          margin: EdgeInsets.only(left: 13.h))
                                    ]),
                                    Padding(
                                        padding: EdgeInsets.only(top: 21.v),
                                        child: Divider(endIndent: 13.h))
                                  ])),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 26.h, top: 38.v),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("You Might Also Like",
                                            style: theme.textTheme.titleLarge),
                                        SizedBox(height: 20.v),
                                        SizedBox(
                                            height: 331.v,
                                            child: ListView.separated(
                                                scrollDirection:
                                                    Axis.horizontal,
                                                separatorBuilder:
                                                    (context, index) {
                                                  return SizedBox(width: 14.h);
                                                },
                                                itemCount: 4,
                                                itemBuilder: (context, index) {
                                                  return ProductprofileItemWidget();
                                                }))
                                      ])))
                        ]))))));
  }

  /// Navigates to the shopAllTabContainerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the shopAllTabContainerScreen.
  onTapImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.shopKidsTabContainerScreen);
  }
}
