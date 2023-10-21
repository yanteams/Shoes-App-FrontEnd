import 'package:flutter/material.dart';
import 'package:flutter_shop_app/views/loading_screen.dart';
import 'package:flutter_shop_app/views/splash.dart';
import 'package:flutter_shop_app/views/login.dart';
import 'package:flutter_shop_app/views/signup.dart';
import 'package:flutter_shop_app/views/shop_all_tab_container_screen.dart';
import 'package:flutter_shop_app/views/shop_detail_product_container_screen.dart';
import 'package:flutter_shop_app/views/favourites_screen.dart';
import 'package:flutter_shop_app/views/favourites_edit_no_item_screen.dart';
import 'package:flutter_shop_app/views/bag_no_item_screen.dart';
import 'package:flutter_shop_app/views/check_out_delivery_screen.dart';
import 'package:flutter_shop_app/views/check_out_payment_show_info_added_card_screen.dart';
import 'package:flutter_shop_app/views/check_out_payment_no_show_info_added_card_screen.dart';
import 'package:flutter_shop_app/views/check_out_payment_no_show_info_added_card_choose_card_screen.dart';
import 'package:flutter_shop_app/views/check_out_payment_show_info_no_add_card_screen.dart';
import 'package:flutter_shop_app/views/check_out_payment_no_show_info_no_add_card_screen.dart';
import 'package:flutter_shop_app/views/app_navigation_screen.dart';

class AppRoutes {
  // static const String loadingScreen = '/loading_screen';

  static const String splashScreen = '/splash_screen';

  static const String loginScreen = '/login_screen';

  static const String registerScreen = '/register_screen';

  static const String otpNoCodeScreen = '/otp_no_code_screen';

  static const String otpCodeFalseScreen = '/otp_code_false_screen';

  static const String otpCodeTrueScreen = '/otp_code_true_screen';

  static const String shopAllPage = '/shop_all_page';

  static const String shopAllTabContainerScreen =
      '/shop_all_tab_container_screen';

  static const String shopKidsPage = '/shop_kids_page';

  static const String shopDetailProductPage = '/shop_detail_product_page';

  static const String shopDetailProductContainerScreen =
      '/shop_detail_product_container_screen';

  static const String favouritesScreen = '/favourites_screen';

  static const String favouritesEditPage = '/favourites_edit_page';

  static const String favouritesEditNoItemScreen =
      '/favourites_edit_no_item_screen';

  static const String bagItemPage = '/bag_item_page';

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

  static const String checkOutPaymentNoShowInfoNoAddCardScreen =
      '/check_out_payment_no_show_info_no_add_card_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    // loadingScreen: (context) => LoadingScreen(),
    splashScreen: (context) => SplashScreen(),
    loginScreen: (context) => LoginScreen(),
    registerScreen: (context) => RegisterScreen(),
    shopAllTabContainerScreen: (context) => ShopAllTabContainerScreen(),
    shopDetailProductContainerScreen: (context) =>
        ShopDetailProductContainerScreen(),
    favouritesScreen: (context) => FavouritesScreen(),
    favouritesEditNoItemScreen: (context) => FavouritesEditNoItemScreen(),
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
    checkOutPaymentNoShowInfoNoAddCardScreen: (context) =>
        CheckOutPaymentNoShowInfoNoAddCardScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
