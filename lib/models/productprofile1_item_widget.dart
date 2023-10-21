
import 'package:flutter/material.dart';
import 'package:flutter_shop_app/utils/snippet.dart';
import 'package:flutter_shop_app/widgets/custom_text_style.dart';

// ignore: must_be_immutable
class Productprofile1ItemWidget extends StatelessWidget {
  const Productprofile1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgRectangle39824,
              height: 140.adaptSize,
              width: 140.adaptSize,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 18.h,
                bottom: 10.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Nike Air Max 270",
                    style: CustomTextStyles.titleSmallBlack900_1,
                  ),
                  SizedBox(height: 3.v),
                  Text(
                    "Men’s Shoes",
                    style: CustomTextStyles.bodyMediumBluegray400,
                  ),
                  Row(
                    children: [
                      Text(
                        "Black",
                        style: CustomTextStyles.bodyMediumBluegray400,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: Text(
                          "|",
                          style: CustomTextStyles.bodyMediumBluegray400,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: Text(
                          "Size 42",
                          style: CustomTextStyles.bodyMediumBluegray400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 11.v),
                  Row(
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgCheckmark,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 8.h,
                          bottom: 2.v,
                        ),
                        child: Text(
                          "1",
                          style: CustomTextStyles.titleMediumInter,
                        ),
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgPlus,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        margin: EdgeInsets.only(left: 9.h),
                      ),
                    ],
                  ),
                  SizedBox(height: 21.v),
                  Text(
                    "249",
                    style: theme.textTheme.titleMedium,
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 10.v),
        Divider(),
      ],
    );
  }
}