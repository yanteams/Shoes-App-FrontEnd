import 'package:flutter_shop_app/models/productlist_item_widget.dart';
import 'package:flutter_shop_app/utils/snippet.dart';
import 'package:flutter_shop_app/widgets/app_bar/appbar_subtitle_4.dart';
import 'package:flutter_shop_app/widgets/app_bar/appbar_title.dart';
import 'package:flutter_shop_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class FavouritesEditPage extends StatelessWidget {
  const FavouritesEditPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                title: AppbarTitle(
                    text: "Favourites",
                    margin:
                    EdgeInsets.only(left: 26.h, top: 50.v, bottom: 15.v)),
                actions: [
                  AppbarSubtitle4(
                      text: "Done",
                      margin: EdgeInsets.fromLTRB(27.h, 56.v, 27.h, 19.v),
                      onTap: () {
                        onTapDone(context);
                      })
                ],
                styleType: Style.bgFill),
            body: GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 306.v,
                    crossAxisCount: 2,
                    mainAxisSpacing: 20.h,
                    crossAxisSpacing: 20.h),
                physics: BouncingScrollPhysics(),
                itemCount: 2,
                itemBuilder: (context, index) {
                  return ProductlistItemWidget();
                })));
  }

  /// Navigates to the favouritesScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the favouritesScreen.
  onTapDone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.favouritesScreen);
  }
}
