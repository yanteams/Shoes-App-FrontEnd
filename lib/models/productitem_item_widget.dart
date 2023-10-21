
import 'package:flutter/material.dart';
import 'package:flutter_shop_app/utils/snippet.dart';
import 'package:flutter_shop_app/widgets/custom_icon_button.dart';
class ProductitemItemWidget extends StatelessWidget {
  const ProductitemItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
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
            style: theme.textTheme.bodyMedium,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 26.h,
            top: 5.v,
          ),
          child: Text(
            "105",
            style: theme.textTheme.titleSmall,
          ),
        ),
        CustomImageView(
          svgPath: ImageConstant.imgFrame427323213,
          height: 16.v,
          width: 137.h,
          margin: EdgeInsets.only(
            left: 26.h,
            top: 9.v,
          ),
        ),
      ],
    );
  }
}
