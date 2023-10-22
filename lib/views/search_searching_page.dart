import 'package:flutter_shop_app/models/productitem1_item_widget.dart';
import 'package:flutter_shop_app/utils/snippet.dart';
import 'package:flutter_shop_app/widgets/app_bar/appbar_image.dart';
import 'package:flutter_shop_app/widgets/app_bar/appbar_image_1.dart';
import 'package:flutter_shop_app/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:flutter_shop_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class SearchSearchingPage extends StatelessWidget {
  const SearchSearchingPage({Key? key}) : super(key: key);

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
                      margin: EdgeInsets.fromLTRB(26.h, 54.v, 26.h, 17.v),
                      onTap: () {
                        onTapSearchone(context);
                      })
                ],
                styleType: Style.bgFill),
            body: StaggeredGridView.countBuilder(
                shrinkWrap: true,
                primary: false,
                crossAxisCount: 4,
                crossAxisSpacing: 20.h,
                mainAxisSpacing: 20.h,
                staggeredTileBuilder: (index) {
                  return StaggeredTile.fit(2);
                },
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Productitem1ItemWidget(onTapProductitem: () {
                    onTapProductitem(context);
                  });
                })));
  }


  onTapProductitem(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.shopDetailProductContainerScreen);
  }


  onTapImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.searchSearchingOneScreen);
  }

  onTapSearchone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.searchSearchingOneScreen);
  }
}
