import 'package:flutter_shop_app/utils/snippet.dart';
import 'package:flutter/material.dart';

<<<<<<< HEAD

=======
>>>>>>> origin/main
class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: 375.h,
                child: Column(children: [
                  Container(
                      decoration: AppDecoration.fillWhiteA,
                      child: Column(children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20.h, vertical: 10.v),
                                child: Text("App Navigation",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: appTheme.black900,
                                        fontSize: 20.fSize,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w400)))),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 20.h),
                                child: Text(
                                    "Check your app's UI from the below demo screens of your app.",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: appTheme.blueGray40002,
                                        fontSize: 16.fSize,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w400)))),
                        SizedBox(height: 5.v),
                        Divider(
                            height: 1.v,
                            thickness: 1.v,
                            color: appTheme.black900)
                      ])),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Container(
                              decoration: AppDecoration.fillWhiteA,
                              child: Column(children: [
                                GestureDetector(
<<<<<<< HEAD
                                    onTap: () {
                                      onTapLoading(context);
                                    },
=======
                                    // onTap: () {
                                    //   onTapLoading(context);
                                    // },
>>>>>>> origin/main
                                    child: Container(
                                        decoration: AppDecoration.fillWhiteA,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text("Loading",
                                                      textAlign:
<<<<<<< HEAD
                                                      TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                          appTheme.black900,
=======
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
>>>>>>> origin/main
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray40002)
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapSplashScreen(context);
                                    },
                                    child: Container(
                                        decoration: AppDecoration.fillWhiteA,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text("Splash Screen",
                                                      textAlign:
<<<<<<< HEAD
                                                      TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                          appTheme.black900,
=======
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
>>>>>>> origin/main
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray40002)
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapLogin(context);
                                    },
                                    child: Container(
                                        decoration: AppDecoration.fillWhiteA,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text("Login",
                                                      textAlign:
<<<<<<< HEAD
                                                      TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                          appTheme.black900,
=======
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
>>>>>>> origin/main
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray40002)
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapRegister(context);
                                    },
                                    child: Container(
                                        decoration: AppDecoration.fillWhiteA,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text("Register",
                                                      textAlign:
<<<<<<< HEAD
                                                      TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                          appTheme.black900,
=======
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
>>>>>>> origin/main
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray40002)
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapOTPNocode(context);
                                    },
                                    child: Container(
                                        decoration: AppDecoration.fillWhiteA,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text("OTP/No code",
                                                      textAlign:
<<<<<<< HEAD
                                                      TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                          appTheme.black900,
=======
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
>>>>>>> origin/main
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray40002)
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapOTPcodefalse(context);
                                    },
                                    child: Container(
                                        decoration: AppDecoration.fillWhiteA,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text("OTP/code/false",
                                                      textAlign:
<<<<<<< HEAD
                                                      TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                          appTheme.black900,
=======
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
>>>>>>> origin/main
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray40002)
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapOTPcodeTrue(context);
                                    },
                                    child: Container(
                                        decoration: AppDecoration.fillWhiteA,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text("OTP/code/True",
                                                      textAlign:
<<<<<<< HEAD
                                                      TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                          appTheme.black900,
=======
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
>>>>>>> origin/main
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray40002)
                                        ]))),
                                GestureDetector(
                                    onTap: () {
<<<<<<< HEAD
                                      onTapShopKidsTabContainer(context);
=======
                                      onTapShopAllTabContainer(context);
>>>>>>> origin/main
                                    },
                                    child: Container(
                                        decoration: AppDecoration.fillWhiteA,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text(
<<<<<<< HEAD
                                                      "Shop/Kids - Tab Container",
                                                      textAlign:
                                                      TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                          appTheme.black900,
=======
                                                      "Shop/All - Tab Container",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
>>>>>>> origin/main
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray40002)
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapShopDetailProductContainer(context);
                                    },
                                    child: Container(
                                        decoration: AppDecoration.fillWhiteA,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text(
                                                      "Shop/Detail Product - Container",
                                                      textAlign:
<<<<<<< HEAD
                                                      TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                          appTheme.black900,
=======
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
>>>>>>> origin/main
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray40002)
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapFavourites(context);
                                    },
                                    child: Container(
                                        decoration: AppDecoration.fillWhiteA,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text("Favourites",
                                                      textAlign:
<<<<<<< HEAD
                                                      TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                          appTheme.black900,
=======
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
>>>>>>> origin/main
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray40002)
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapFavouritesEditNoItem(context);
                                    },
                                    child: Container(
                                        decoration: AppDecoration.fillWhiteA,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text(
                                                      "Favourites/Edit/No Item",
                                                      textAlign:
<<<<<<< HEAD
                                                      TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                          appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray40002)
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapBagItem(context);
                                    },
                                    child: Container(
                                        decoration: AppDecoration.fillWhiteA,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text("Bag/Item",
                                                      textAlign:
                                                      TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                          appTheme.black900,
=======
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
>>>>>>> origin/main
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray40002)
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapBagNoItem(context);
                                    },
                                    child: Container(
                                        decoration: AppDecoration.fillWhiteA,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text("Bag/No Item",
                                                      textAlign:
<<<<<<< HEAD
                                                      TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                          appTheme.black900,
=======
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
>>>>>>> origin/main
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray40002)
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapCheckoutDelivery(context);
                                    },
                                    child: Container(
                                        decoration: AppDecoration.fillWhiteA,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text(
                                                      "Check out/Delivery",
                                                      textAlign:
<<<<<<< HEAD
                                                      TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                          appTheme.black900,
=======
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
>>>>>>> origin/main
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray40002)
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapCheckoutPaymentShowInfoAddedCard(
                                          context);
                                    },
                                    child: Container(
                                        decoration: AppDecoration.fillWhiteA,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text(
                                                      "Check out/Payment/Show Info/Added Card",
                                                      textAlign:
<<<<<<< HEAD
                                                      TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                          appTheme.black900,
=======
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
>>>>>>> origin/main
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray40002)
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapCheckoutPaymentNoshowinfoAddedCard(
                                          context);
                                    },
                                    child: Container(
                                        decoration: AppDecoration.fillWhiteA,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text(
                                                      "Check out/Payment/No show info/Added Card",
                                                      textAlign:
<<<<<<< HEAD
                                                      TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                          appTheme.black900,
=======
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
>>>>>>> origin/main
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray40002)
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapCheckoutPaymentNoshowinfoAddedCardChooseCard(
                                          context);
                                    },
                                    child: Container(
                                        decoration: AppDecoration.fillWhiteA,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text(
                                                      "Check out/Payment/No show info/Added Card//Choose Card",
                                                      textAlign:
<<<<<<< HEAD
                                                      TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                          appTheme.black900,
=======
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
>>>>>>> origin/main
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray40002)
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapCheckoutPaymentShowInfoNoaddCard(
                                          context);
                                    },
                                    child: Container(
                                        decoration: AppDecoration.fillWhiteA,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text(
                                                      "Check out/Payment/Show Info/No add Card",
                                                      textAlign:
<<<<<<< HEAD
                                                      TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                          appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray40002)
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapCheckoutPaymentNoshowinfoNoaddCardOne(
                                          context);
                                    },
                                    child: Container(
                                        decoration: AppDecoration.fillWhiteA,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text(
                                                      "Check out/Payment/No show info/No add Card One",
                                                      textAlign:
                                                      TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                          appTheme.black900,
=======
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
>>>>>>> origin/main
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray40002)
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapCheckoutPaymentNoshowinfoNoaddCard(
                                          context);
                                    },
                                    child: Container(
                                        decoration: AppDecoration.fillWhiteA,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text(
                                                      "Check out/Payment/No show info/No add Card",
                                                      textAlign:
<<<<<<< HEAD
                                                      TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                          appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray40002)
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapCheckoutPaymentNoshowinfoLoading(
                                          context);
                                    },
                                    child: Container(
                                        decoration: AppDecoration.fillWhiteA,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text(
                                                      "Check out/Payment/No show info/Loading",
                                                      textAlign:
                                                      TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                          appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray40002)
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapCheckoutPaymentNoshowinfoAnimationship(
                                          context);
                                    },
                                    child: Container(
                                        decoration: AppDecoration.fillWhiteA,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text(
                                                      "Check out/Payment/No show info/Animation ship",
                                                      textAlign:
                                                      TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                          appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray40002)
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapCheckoutPaymentNoshowinfoSuccess(
                                          context);
                                    },
                                    child: Container(
                                        decoration: AppDecoration.fillWhiteA,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text(
                                                      "Check out/Payment/No show info/Success",
                                                      textAlign:
                                                      TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                          appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray40002)
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapProfile(context);
                                    },
                                    child: Container(
                                        decoration: AppDecoration.fillWhiteA,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text("Profile",
                                                      textAlign:
                                                      TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                          appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray40002)
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapProfileSetting(context);
                                    },
                                    child: Container(
                                        decoration: AppDecoration.fillWhiteA,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text("Profile/Setting",
                                                      textAlign:
                                                      TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                          appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray40002)
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapProfileEventDetail(context);
                                    },
                                    child: Container(
                                        decoration: AppDecoration.fillWhiteA,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text(
                                                      "Profile/Event/Detail",
                                                      textAlign:
                                                      TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                          appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray40002)
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapSearch(context);
                                    },
                                    child: Container(
                                        decoration: AppDecoration.fillWhiteA,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text("Search",
                                                      textAlign:
                                                      TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                          appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray40002)
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapSearchClick(context);
                                    },
                                    child: Container(
                                        decoration: AppDecoration.fillWhiteA,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text("Search/Click",
                                                      textAlign:
                                                      TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                          appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray40002)
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapSearchSearchingOne(context);
                                    },
                                    child: Container(
                                        decoration: AppDecoration.fillWhiteA,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text(
                                                      "Search/Searching One",
                                                      textAlign:
                                                      TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                          appTheme.black900,
=======
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
>>>>>>> origin/main
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray40002)
                                        ])))
                              ]))))
                ]))));
  }

  /// Navigates to the loadingScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the loadingScreen.
<<<<<<< HEAD
  onTapLoading(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loadingScreen);
  }
=======
  // onTapLoading(BuildContext context) {
  //   Navigator.pushNamed(context, AppRoutes.loadingScreen);
  // }
>>>>>>> origin/main

  /// Navigates to the splashScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the splashScreen.
  onTapSplashScreen(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.splashScreen);
  }

  /// Navigates to the loginScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the loginScreen.
  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }

  /// Navigates to the registerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the registerScreen.
  onTapRegister(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.registerScreen);
  }

  /// Navigates to the otpNoCodeScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the otpNoCodeScreen.
  onTapOTPNocode(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.otpNoCodeScreen);
  }

  /// Navigates to the otpCodeFalseScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the otpCodeFalseScreen.
  onTapOTPcodefalse(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.otpCodeFalseScreen);
  }

  /// Navigates to the otpCodeTrueScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the otpCodeTrueScreen.
  onTapOTPcodeTrue(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.otpCodeTrueScreen);
  }

<<<<<<< HEAD
  /// Navigates to the shopKidsTabContainerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the shopKidsTabContainerScreen.
  onTapShopKidsTabContainer(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.shopKidsTabContainerScreen);
=======
  /// Navigates to the shopAllTabContainerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the shopAllTabContainerScreen.
  onTapShopAllTabContainer(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.shopAllTabContainerScreen);
>>>>>>> origin/main
  }

  /// Navigates to the shopDetailProductContainerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the shopDetailProductContainerScreen.
  onTapShopDetailProductContainer(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.shopDetailProductContainerScreen);
  }

  /// Navigates to the favouritesScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the favouritesScreen.
  onTapFavourites(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.favouritesScreen);
  }

  /// Navigates to the favouritesEditNoItemScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the favouritesEditNoItemScreen.
  onTapFavouritesEditNoItem(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.favouritesEditNoItemScreen);
  }

<<<<<<< HEAD
  /// Navigates to the bagItemScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the bagItemScreen.
  onTapBagItem(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.bagItemPage);
  }

=======
>>>>>>> origin/main
  /// Navigates to the bagNoItemScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the bagNoItemScreen.
  onTapBagNoItem(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.bagNoItemScreen);
  }

  /// Navigates to the checkOutDeliveryScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the checkOutDeliveryScreen.
  onTapCheckoutDelivery(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.checkOutDeliveryScreen);
  }

  /// Navigates to the checkOutPaymentShowInfoAddedCardScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the checkOutPaymentShowInfoAddedCardScreen.
  onTapCheckoutPaymentShowInfoAddedCard(BuildContext context) {
    Navigator.pushNamed(
        context, AppRoutes.checkOutPaymentShowInfoAddedCardScreen);
  }

  /// Navigates to the checkOutPaymentNoShowInfoAddedCardScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the checkOutPaymentNoShowInfoAddedCardScreen.
  onTapCheckoutPaymentNoshowinfoAddedCard(BuildContext context) {
    Navigator.pushNamed(
        context, AppRoutes.checkOutPaymentNoShowInfoAddedCardScreen);
  }

  /// Navigates to the checkOutPaymentNoShowInfoAddedCardChooseCardScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the checkOutPaymentNoShowInfoAddedCardChooseCardScreen.
  onTapCheckoutPaymentNoshowinfoAddedCardChooseCard(BuildContext context) {
    Navigator.pushNamed(
        context, AppRoutes.checkOutPaymentNoShowInfoAddedCardChooseCardScreen);
  }

  /// Navigates to the checkOutPaymentShowInfoNoAddCardScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the checkOutPaymentShowInfoNoAddCardScreen.
  onTapCheckoutPaymentShowInfoNoaddCard(BuildContext context) {
    Navigator.pushNamed(
        context, AppRoutes.checkOutPaymentShowInfoNoAddCardScreen);
  }

<<<<<<< HEAD
  /// Navigates to the checkOutPaymentNoShowInfoNoAddCardOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the checkOutPaymentNoShowInfoNoAddCardOneScreen.
  onTapCheckoutPaymentNoshowinfoNoaddCardOne(BuildContext context) {
    Navigator.pushNamed(
        context, AppRoutes.checkOutPaymentNoShowInfoNoAddCardOneScreen);
  }

=======
>>>>>>> origin/main
  /// Navigates to the checkOutPaymentNoShowInfoNoAddCardScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the checkOutPaymentNoShowInfoNoAddCardScreen.
  onTapCheckoutPaymentNoshowinfoNoaddCard(BuildContext context) {
    Navigator.pushNamed(
        context, AppRoutes.checkOutPaymentNoShowInfoNoAddCardScreen);
  }
<<<<<<< HEAD

  /// Navigates to the checkOutPaymentNoShowInfoLoadingScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the checkOutPaymentNoShowInfoLoadingScreen.
  onTapCheckoutPaymentNoshowinfoLoading(BuildContext context) {
    Navigator.pushNamed(
        context, AppRoutes.checkOutPaymentNoShowInfoLoadingScreen);
  }

  /// Navigates to the checkOutPaymentNoShowInfoAnimationShipScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the checkOutPaymentNoShowInfoAnimationShipScreen.
  onTapCheckoutPaymentNoshowinfoAnimationship(BuildContext context) {
    Navigator.pushNamed(
        context, AppRoutes.checkOutPaymentNoShowInfoAnimationShipScreen);
  }

  /// Navigates to the checkOutPaymentNoShowInfoSuccessScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the checkOutPaymentNoShowInfoSuccessScreen.
  onTapCheckoutPaymentNoshowinfoSuccess(BuildContext context) {
    Navigator.pushNamed(
        context, AppRoutes.checkOutPaymentNoShowInfoSuccessScreen);
  }

  /// Navigates to the profileScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the profileScreen.
  onTapProfile(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }

  /// Navigates to the profileSettingScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the profileSettingScreen.
  onTapProfileSetting(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileSettingScreen);
  }

  /// Navigates to the profileEventDetailScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the profileEventDetailScreen.
  onTapProfileEventDetail(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileEventDetailScreen);
  }

  /// Navigates to the searchScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the searchScreen.
  onTapSearch(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.searchScreen);
  }

  /// Navigates to the searchClickScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the searchClickScreen.
  onTapSearchClick(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.searchClickScreen);
  }

  /// Navigates to the searchSearchingOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the searchSearchingOneScreen.
  onTapSearchSearchingOne(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.searchSearchingOneScreen);
  }
=======
>>>>>>> origin/main
}
