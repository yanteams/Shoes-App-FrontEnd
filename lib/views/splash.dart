import 'package:flutter/material.dart';
import 'package:flutter_shop_app/utils/snippet.dart';
import 'package:flutter_shop_app/utils/custom_outlined_button.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.black900,
            body: SizedBox(
                height: 725.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.topCenter, children: [
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                          height: 408.v,
                          width: double.maxFinite,
                          child:
                          Stack(alignment: Alignment.topRight, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgRectangle32,
                                height: 217.v,
                                width: 173.h,
                                radius: BorderRadius.circular(18.h),
                                alignment: Alignment.topLeft,
                                margin: EdgeInsets.only(top: 54.v)),
                            CustomImageView(
                                imagePath: ImageConstant.imgRectangle33,
                                height: 217.adaptSize,
                                width: 217.adaptSize,
                                radius: BorderRadius.circular(18.h),
                                alignment: Alignment.topRight,
                                margin:
                                EdgeInsets.only(top: 27.v, right: 49.h)),
                            CustomImageView(
                                imagePath: ImageConstant.imgRectangle34,
                                height: 217.v,
                                width: 61.h,
                                radius: BorderRadius.circular(18.h),
                                alignment: Alignment.topRight),
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                    height: 257.v,
                                    width: double.maxFinite,
                                    margin: EdgeInsets.only(bottom: 35.v),
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                            begin: Alignment(0.5, 0),
                                            end: Alignment(0.5, 0.63),
                                            colors: [
                                              appTheme.black900.withOpacity(0),
                                              appTheme.black900
                                            ]))))
                          ]))),
                  Align(
                      alignment: Alignment.topCenter,
                      child: SizedBox(
                          height: 225.v,
                          width: double.maxFinite,
                          child:
                          Stack(alignment: Alignment.topRight, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgRectangle21,
                                height: 217.v,
                                width: 185.h,
                                radius: BorderRadius.circular(18.h),
                                alignment: Alignment.centerLeft),
                            CustomImageView(
                                imagePath: ImageConstant.imgRectangle27,
                                height: 195.v,
                                width: 217.h,
                                radius: BorderRadius.circular(18.h),
                                alignment: Alignment.topRight,
                                margin: EdgeInsets.only(right: 40.h)),
                            CustomImageView(
                                imagePath: ImageConstant.imgRectangle28,
                                height: 166.v,
                                width: 54.h,
                                radius: BorderRadius.circular(18.h),
                                alignment: Alignment.topRight)
                          ]))),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                          height: 259.v,
                          width: double.maxFinite,
                          margin: EdgeInsets.only(top: 177.v),
                          child:
                          Stack(alignment: Alignment.topRight, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgRectangle12,
                                height: 217.v,
                                width: 188.h,
                                radius: BorderRadius.circular(18.h),
                                alignment: Alignment.bottomLeft),
                            CustomImageView(
                                imagePath: ImageConstant.imgRectangle14,
                                height: 217.adaptSize,
                                width: 217.adaptSize,
                                radius: BorderRadius.circular(18.h),
                                alignment: Alignment.topRight,
                                margin:
                                EdgeInsets.only(top: 12.v, right: 35.h)),
                            CustomImageView(
                                imagePath: ImageConstant.imgRectangle15,
                                height: 199.v,
                                width: 48.h,
                                radius: BorderRadius.circular(18.h),
                                alignment: Alignment.topRight)
                          ]))),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                          width: 318.h,
                          margin: EdgeInsets.only(left: 26.h, bottom: 12.v),
                          child: Text(
                              "Bringing Nike Members the best products, inspiration and storeies in sport.",
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.headlineLargeWhiteA700)))
                ])),
            bottomNavigationBar: Padding(
                padding: EdgeInsets.symmetric(horizontal: 26.h),
                child: Row(children: [
                  CustomOutlinedButton(
                      height: 44.v,
                      width: 99.h,
                      text: "Join Us",
                      buttonStyle: CustomButtonStyles.outlineGray,
                      buttonTextStyle: CustomTextStyles.labelLargePrimary,
                      onTap: () {
                        onTapJoinus(context);
                      }),
                  CustomOutlinedButton(
                      height: 44.v,
                      width: 99.h,
                      text: "Sign In",
                      margin: EdgeInsets.only(left: 20.h),
                      buttonStyle: CustomButtonStyles.outlineErrorContainer,
                      buttonTextStyle: theme.textTheme.labelLarge!,
                      onTap: () {
                        onTapSignin(context);
                      })
                ]))));
  }
  onTapJoinus(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.registerScreen);
  }

  onTapSignin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }
}
