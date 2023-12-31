<<<<<<< HEAD

import 'package:flutter/material.dart';
import 'package:flutter_shop_app/utils/snippet.dart';
import 'package:flutter_shop_app/widgets/custom_icon_button.dart';
import 'package:flutter_shop_app/widgets/custom_text_style.dart';

// ignore: must_be_immutable
class Productitem1ItemWidget extends StatelessWidget {
  Productitem1ItemWidget({
    Key? key,
    this.onTapProductitem,
  }) : super(
          key: key,
        );

  VoidCallback? onTapProductitem;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapProductitem?.call();
      },
=======
import 'package:flutter_shop_app/utils/snippet.dart';
import 'package:flutter_shop_app/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class Productitem1ItemWidget extends StatelessWidget {
  const Productitem1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 204.h,
>>>>>>> origin/main
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 204.adaptSize,
            width: 204.adaptSize,
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle39824,
                  height: 204.adaptSize,
                  width: 204.adaptSize,
                  alignment: Alignment.center,
                ),
                CustomIconButton(
                  height: 36.adaptSize,
                  width: 36.adaptSize,
                  margin: EdgeInsets.only(
                    top: 12.v,
                    right: 12.h,
                  ),
                  padding: EdgeInsets.all(6.h),
                  alignment: Alignment.topRight,
                  child: CustomImageView(
<<<<<<< HEAD
                    svgPath: ImageConstant.imgComponent2Black900,
=======
                    svgPath: ImageConstant.imgComponent2Black90036x36,
>>>>>>> origin/main
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 26.h,
              top: 12.v,
            ),
            child: Text(
<<<<<<< HEAD
              "Nike Air Max 270",
=======
              "Best Seller",
              style: CustomTextStyles.titleMediumRed800,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 26.h,
              top: 5.v,
            ),
            child: Text(
              "Nike Waffle Debut",
>>>>>>> origin/main
              style: CustomTextStyles.titleMediumOnPrimaryContainerSemiBold,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 26.h,
              top: 5.v,
            ),
            child: Text(
              "Men’s Shoes",
<<<<<<< HEAD
              style: CustomTextStyles.bodyMediumBluegray400,
=======
              style: theme.textTheme.bodyMedium,
>>>>>>> origin/main
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 26.h,
              top: 5.v,
            ),
            child: Text(
<<<<<<< HEAD
              "249",
              style: theme.textTheme.titleSmall,
            ),
          ),
          CustomImageView(
            svgPath: ImageConstant.imgFrame427323213,
            height: 16.v,
            width: 137.h,
            margin: EdgeInsets.only(
              left: 26.h,
              top: 34.v,
            ),
          ),
=======
              "105",
              style: theme.textTheme.titleSmall,
            ),
          ),
>>>>>>> origin/main
        ],
      ),
    );
  }
}
