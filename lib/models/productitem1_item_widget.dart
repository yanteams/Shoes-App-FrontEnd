
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
                    svgPath: ImageConstant.imgComponent2Black900,
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
              "Nike Air Max 270",
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
              style: CustomTextStyles.bodyMediumBluegray400,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 26.h,
              top: 5.v,
            ),
            child: Text(
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
        ],
      ),
    );
  }
}
