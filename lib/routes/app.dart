import 'package:flutter/material.dart';
import 'package:flutter_shop_app/views/loading_screen.dart';
import 'package:flutter_shop_app/views/splash.dart';
import 'package:flutter_shop_app/views/login.dart';
import 'package:flutter_shop_app/views/signup.dart';
<<<<<<< HEAD
import 'package:flutter_shop_app/views/otp_no_code_screen.dart';
import 'package:flutter_shop_app/views/otp_code_false_screen.dart';
import 'package:flutter_shop_app/views/otp_code_true_screen.dart';
import 'package:flutter_shop_app/views/shop_kids_tab_container_screen.dart';
import 'package:flutter_shop_app/views/shop_detail_product_container_screen.dart';
import 'package:flutter_shop_app/views/favourites_screen.dart';
import 'package:flutter_shop_app/views/favourites_edit_no_item_screen.dart';
import 'package:flutter_shop_app/views/bag_item_screen.dart';
=======
import 'package:flutter_shop_app/views/shop_all_tab_container_screen.dart';
import 'package:flutter_shop_app/views/shop_detail_product_container_screen.dart';
import 'package:flutter_shop_app/views/favourites_screen.dart';
import 'package:flutter_shop_app/views/favourites_edit_no_item_screen.dart';
>>>>>>> origin/main
import 'package:flutter_shop_app/views/bag_no_item_screen.dart';
import 'package:flutter_shop_app/views/check_out_delivery_screen.dart';
import 'package:flutter_shop_app/views/check_out_payment_show_info_added_card_screen.dart';
import 'package:flutter_shop_app/views/check_out_payment_no_show_info_added_card_screen.dart';
import 'package:flutter_shop_app/views/check_out_payment_no_show_info_added_card_choose_card_screen.dart';
import 'package:flutter_shop_app/views/check_out_payment_show_info_no_add_card_screen.dart';
<<<<<<< HEAD
import 'package:flutter_shop_app/views/check_out_payment_no_show_info_no_add_card_one_screen.dart';
import 'package:flutter_shop_app/views/check_out_payment_no_show_info_no_add_card_screen.dart';
import 'package:flutter_shop_app/views/check_out_payment_no_show_info_loading_screen.dart';
import 'package:flutter_shop_app/views/check_out_payment_no_show_info_animation_ship_screen.dart';
import 'package:flutter_shop_app/views/check_out_payment_no_show_info_success_screen.dart';
import 'package:flutter_shop_app/views/profile_screen.dart';
import 'package:flutter_shop_app/views/profile_setting_screen.dart';
import 'package:flutter_shop_app/views/profile_event_detail_screen.dart';
import 'package:flutter_shop_app/views/search_screen.dart';
import 'package:flutter_shop_app/views/search_click_screen.dart';
import 'package:flutter_shop_app/views/search_searching_one_screen.dart';
import 'package:flutter_shop_app/views/app_navigation_screen.dart';

class AppRoutes {
  static const String loadingScreen = '/loading_screen';
=======
import 'package:flutter_shop_app/views/check_out_payment_no_show_info_no_add_card_screen.dart';
import 'package:flutter_shop_app/views/app_navigation_screen.dart';

class AppRoutes {
  // static const String loadingScreen = '/loading_screen';
>>>>>>> origin/main

  static const String splashScreen = '/splash_screen';

  static const String loginScreen = '/login_screen';

  static const String registerScreen = '/register_screen';

  static const String otpNoCodeScreen = '/otp_no_code_screen';

  static const String otpCodeFalseScreen = '/otp_code_false_screen';

  static const String otpCodeTrueScreen = '/otp_code_true_screen';

  static const String shopAllPage = '/shop_all_page';

<<<<<<< HEAD
  static const String shopKidsPage = '/shop_kids_page';

  static const String shopKidsTabContainerScreen =
      '/shop_kids_tab_container_screen';
=======
  static const String shopAllTabContainerScreen =
      '/shop_all_tab_container_screen';

  static const String shopKidsPage = '/shop_kids_page';
>>>>>>> origin/main

  static const String shopDetailProductPage = '/shop_detail_product_page';

  static const String shopDetailProductContainerScreen =
      '/shop_detail_product_container_screen';

  static const String favouritesScreen = '/favourites_screen';

  static const String favouritesEditPage = '/favourites_edit_page';

  static const String favouritesEditNoItemScreen =
      '/favourites_edit_no_item_screen';

<<<<<<< HEAD
  static const String bagItemPage = '/bag_item_screen';
=======
  static const String bagItemPage = '/bag_item_page';
>>>>>>> origin/main

  static const String bagNoItemScreen = '/bag_no_item_screen';

  static const String checkOutDeliveryScreen = '/check_out_delivery_screen';

  static const String checkOutPaymentShowInfoAddedCardScreen =
      '/check_out_payment_show_info_added_card_screen';

  static const String checkOutPaymentNoShowInfoAddedCardScreen =
      '/check_out_payment_no_show_info_added_card_screen';

  static const String checkOutPaymentNoShowInfoAddedCardChooseCardScreen =
      '/check_out_payment_no_show_info_added_card_choose_card_screen';

  static const String checkOutPaymentShowInfoNoAddCardScreen =
      '/check_out_payment_show_info_no_add_card_screen';

<<<<<<< HEAD
  static const String checkOutPaymentNoShowInfoNoAddCardOneScreen =
      '/check_out_payment_no_show_info_no_add_card_one_screen';

  static const String checkOutPaymentNoShowInfoNoAddCardScreen =
      '/check_out_payment_no_show_info_no_add_card_screen';

  static const String checkOutPaymentNoShowInfoLoadingScreen =
      '/check_out_payment_no_show_info_loading_screen';

  static const String checkOutPaymentNoShowInfoAnimationShipScreen =
      '/check_out_payment_no_show_info_animation_ship_screen';

  static const String checkOutPaymentNoShowInfoSuccessScreen =
      '/check_out_payment_no_show_info_success_screen';

  static const String notificationsPage = '/notifications_page';

  static const String profileScreen = '/profile_screen';

  static const String profileSettingScreen = '/profile_setting_screen';

  static const String profileEventPage = '/profile_event_page';

  static const String profileEventDetailScreen = '/profile_event_detail_screen';

  static const String searchScreen = '/search_screen';

  static const String searchClickScreen = '/search_click_screen';

  static const String searchSearchingOneScreen = '/search_searching_one_screen';

  static const String searchSearchingPage = '/search_searching_page';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    loadingScreen: (context) => LoadingScreen(),
    splashScreen: (context) => SplashScreen(),
    loginScreen: (context) => LoginScreen(),
    registerScreen: (context) => RegisterScreen(),
    otpNoCodeScreen: (context) => OtpNoCodeScreen(),
    otpCodeFalseScreen: (context) => OtpCodeFalseScreen(),
    otpCodeTrueScreen: (context) => OtpCodeTrueScreen(),
    shopKidsTabContainerScreen: (context) => ShopKidsTabContainerScreen(),
=======
  static const String checkOutPaymentNoShowInfoNoAddCardScreen =
      '/check_out_payment_no_show_info_no_add_card_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    // loadingScreen: (context) => LoadingScreen(),
    splashScreen: (context) => SplashScreen(),
    loginScreen: (context) => LoginScreen(),
    registerScreen: (context) => RegisterScreen(),
    shopAllTabContainerScreen: (context) => ShopAllTabContainerScreen(),
>>>>>>> origin/main
    shopDetailProductContainerScreen: (context) =>
        ShopDetailProductContainerScreen(),
    favouritesScreen: (context) => FavouritesScreen(),
    favouritesEditNoItemScreen: (context) => FavouritesEditNoItemScreen(),
<<<<<<< HEAD
    bagItemPage: (context) => BagItemPage(),
=======
>>>>>>> origin/main
    bagNoItemScreen: (context) => BagNoItemScreen(),
    checkOutDeliveryScreen: (context) => CheckOutDeliveryScreen(),
    checkOutPaymentShowInfoAddedCardScreen: (context) =>
        CheckOutPaymentShowInfoAddedCardScreen(),
    checkOutPaymentNoShowInfoAddedCardScreen: (context) =>
        CheckOutPaymentNoShowInfoAddedCardScreen(),
    checkOutPaymentNoShowInfoAddedCardChooseCardScreen: (context) =>
        CheckOutPaymentNoShowInfoAddedCardChooseCardScreen(),
    checkOutPaymentShowInfoNoAddCardScreen: (context) =>
        CheckOutPaymentShowInfoNoAddCardScreen(),
<<<<<<< HEAD
    checkOutPaymentNoShowInfoNoAddCardOneScreen: (context) =>
        CheckOutPaymentNoShowInfoNoAddCardOneScreen(),
    checkOutPaymentNoShowInfoNoAddCardScreen: (context) =>
        CheckOutPaymentNoShowInfoNoAddCardScreen(),
    checkOutPaymentNoShowInfoLoadingScreen: (context) =>
        CheckOutPaymentNoShowInfoLoadingScreen(),
    checkOutPaymentNoShowInfoAnimationShipScreen: (context) =>
        CheckOutPaymentNoShowInfoAnimationShipScreen(),
    checkOutPaymentNoShowInfoSuccessScreen: (context) =>
        CheckOutPaymentNoShowInfoSuccessScreen(),
    profileScreen: (context) => ProfileScreen(),
    profileSettingScreen: (context) => ProfileSettingScreen(),
    profileEventDetailScreen: (context) => ProfileEventDetailScreen(),
    searchScreen: (context) => SearchScreen(),
    searchClickScreen: (context) => SearchClickScreen(),
    searchSearchingOneScreen: (context) => SearchSearchingOneScreen(),
=======
    checkOutPaymentNoShowInfoNoAddCardScreen: (context) =>
        CheckOutPaymentNoShowInfoNoAddCardScreen(),
>>>>>>> origin/main
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
