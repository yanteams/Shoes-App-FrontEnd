import 'package:flutter_shop_app/models/profileevent_item_widget.dart';
import 'package:flutter_shop_app/utils/snippet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop_app/widgets/app_bar/appbar_image_1.dart';
import 'package:flutter_shop_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:flutter_shop_app/widgets/custom_app_bar.dart';
class ProfileEventPage extends StatelessWidget {
  const ProfileEventPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
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
                title: AppbarSubtitle(text: "Event")),
            body: Padding(
                padding: EdgeInsets.only(top: 1.v),
                child: ListView.separated(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: 5.v);
                    },
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return ProfileeventItemWidget(onTapImgImage: () {
                        onTapImgImage(context);
                      });
                    }))));
  }

  onTapImgImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileEventDetailScreen);
  }

  onTapImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }
}
