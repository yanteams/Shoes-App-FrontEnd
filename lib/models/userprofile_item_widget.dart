import 'package:flutter/material.dart';
import 'package:flutter_shop_app/utils/snippet.dart';
import 'package:flutter_shop_app/widgets/custom_icon_button.dart';
import 'package:flutter_shop_app/widgets/custom_text_style.dart';

class UserprofileItemWidget extends StatelessWidget {
  const UserprofileItemWidget({Key? key})
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
                imagePath: ImageConstant.imgRectangle398243,
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
            "Member Access",
            style: CustomTextStyles.titleMediumRed800,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 26.h,
            top: 5.v,
          ),
          child: Text(
            "Nike Air Max 1 Easy On",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.titleMediumOnPrimaryContainerSemiBold,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 26.h,
            top: 7.v,
          ),
          child: Text(
            "Younger’s Kids Shoes",
            style: theme.textTheme.bodyMedium,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 26.h,
            top: 3.v,
          ),
          child: Text(
            "119",
            style: theme.textTheme.titleSmall,
          ),
        ),
      ],
    );
  }
}
