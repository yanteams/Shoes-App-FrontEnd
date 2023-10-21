import 'package:flutter_shop_app/models/productprofile1_item_widget.dart';
import 'package:flutter_shop_app/utils/snippet.dart';
import 'package:flutter_shop_app/widgets/app_bar/appbar_image.dart';
import 'package:flutter_shop_app/widgets/app_bar/appbar_title.dart';
import 'package:flutter_shop_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter_shop_app/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class BagItemPage extends StatelessWidget {
  const BagItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                title: AppbarTitle(
                    text: "Bag",
                    margin:
                        EdgeInsets.only(left: 26.h, top: 53.v, bottom: 12.v)),
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
                        padding: EdgeInsets.only(left: 26.h, bottom: 5.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(children: [
                                Expanded(
                                    child: ListView.separated(
                                        physics: NeverScrollableScrollPhysics(),
                                        shrinkWrap: true,
                                        separatorBuilder: (context, index) {
                                          return SizedBox(height: 8.v);
                                        },
                                        itemCount: 2,
                                        itemBuilder: (context, index) {
                                          return Productprofile1ItemWidget();
                                        })),
                                Container(
                                    height: 150.v,
                                    width: 88.h,
                                    margin: EdgeInsets.only(
                                        left: 36.h, bottom: 1.v),
                                    decoration:
                                        BoxDecoration(color: appTheme.gray200)),
                                SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    padding: EdgeInsets.only(bottom: 1.v),
                                    child: IntrinsicWidth(
                                        child: Container(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 63.v),
                                            decoration: AppDecoration.fillGray,
                                            child: Row(children: [
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgComponent2Black900,
                                                  height: 24.adaptSize,
                                                  width: 24.adaptSize),
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgTrash,
                                                  height: 24.adaptSize,
                                                  width: 24.adaptSize,
                                                  margin: EdgeInsets.only(
                                                      left: 64.h))
                                            ]))))
                              ]),
                              SizedBox(height: 8.v),
                              SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: IntrinsicWidth(
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                        Container(
                                            height: 150.v,
                                            width: 88.h,
                                            margin:
                                                EdgeInsets.only(bottom: 1.v),
                                            decoration: BoxDecoration(
                                                color: appTheme.gray200)),
                                        Container(
                                            width: 88.h,
                                            margin:
                                                EdgeInsets.only(bottom: 1.v),
                                            padding: EdgeInsets.symmetric(
                                                vertical: 63.v),
                                            decoration: AppDecoration.fillGray,
                                            child: Row(children: [
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgComponent2Black900,
                                                  height: 24.adaptSize,
                                                  width: 24.adaptSize),
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgTrash,
                                                  height: 24.adaptSize,
                                                  width: 24.adaptSize,
                                                  margin: EdgeInsets.only(
                                                      left: 64.h))
                                            ]))
                                      ]))),
                              Padding(
                                  padding:
                                      EdgeInsets.only(top: 8.v, right: 26.h),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Subtotal ",
                                            style: theme.textTheme.bodyLarge),
                                        Text("414",
                                            style: theme.textTheme.bodyLarge)
                                      ])),
                              Padding(
                                  padding:
                                      EdgeInsets.only(top: 5.v, right: 26.h),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(top: 1.v),
                                            child: Text("Shipping",
                                                style:
                                                    theme.textTheme.bodyLarge)),
                                        Text("Standard - Free",
                                            style: theme.textTheme.bodyLarge)
                                      ])),
                              Padding(
                                  padding:
                                      EdgeInsets.only(top: 4.v, right: 26.h),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Total",
                                            style: theme.textTheme.titleMedium),
                                        Text("414",
                                            style: theme.textTheme.titleMedium)
                                      ])),
                              CustomOutlinedButton(
                                  text: "Check out",
                                  margin:
                                      EdgeInsets.only(top: 30.v, right: 26.h),
                                  onTap: () {
                                    onTapCheckout(context);
                                  })
                            ]))))));
  }

  /// Navigates to the checkOutDeliveryScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the checkOutDeliveryScreen.
  onTapCheckout(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.checkOutDeliveryScreen);
  }
}
