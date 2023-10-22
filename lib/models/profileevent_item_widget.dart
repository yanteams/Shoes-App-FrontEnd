import 'package:flutter_shop_app/utils/snippet.dart';
import 'package:flutter_shop_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop_app/widgets/custom_text_style.dart';

// ignore: must_be_immutable
class ProfileeventItemWidget extends StatelessWidget {
  ProfileeventItemWidget({
    Key? key,
    this.onTapImgImage,
  }) : super(
          key: key,
        );

  VoidCallback? onTapImgImage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 590.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle39832,
            height: 590.v,
            width: 428.h,
            alignment: Alignment.center,
            onTap: () {
              onTapImgImage?.call();
            },
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 25.h,
                bottom: 64.v,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Nike Running",
                    style: CustomTextStyles.titleMediumWhiteA700SemiBold,
                  ),
                  SizedBox(height: 2.v),
                  Text(
                    "YOUR CITY. YOUR STRIDE",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.displaySmall,
                  ),
                  SizedBox(height: 10.v),
                  CustomElevatedButton(
                    height: 48.v,
                    width: 122.h,
                    text: "Learn More",
                    buttonTextStyle: CustomTextStyles.titleSmallInterPrimary,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
