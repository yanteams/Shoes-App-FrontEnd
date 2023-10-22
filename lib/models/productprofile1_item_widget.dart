
import 'package:flutter/material.dart';
import 'package:flutter_shop_app/utils/snippet.dart';
<<<<<<< HEAD
import 'package:flutter_shop_app/widgets/custom_text_style.dart';

// ignore: must_be_immutable
=======

>>>>>>> origin/main
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
<<<<<<< HEAD
              imagePath: ImageConstant.imgRectangle39824,
=======
              imagePath: ImageConstant.imgRectangle39824204x204,
>>>>>>> origin/main
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
<<<<<<< HEAD
                    style: CustomTextStyles.titleSmallBlack900_1,
=======
                    style: CustomTextStyles.titleSmallBlack900,
>>>>>>> origin/main
                  ),
                  SizedBox(height: 3.v),
                  Text(
                    "Men’s Shoes",
<<<<<<< HEAD
                    style: CustomTextStyles.bodyMediumBluegray400,
=======
                    style: theme.textTheme.bodyMedium,
>>>>>>> origin/main
                  ),
                  Row(
                    children: [
                      Text(
                        "Black",
<<<<<<< HEAD
                        style: CustomTextStyles.bodyMediumBluegray400,
=======
                        style: theme.textTheme.bodyMedium,
>>>>>>> origin/main
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: Text(
                          "|",
<<<<<<< HEAD
                          style: CustomTextStyles.bodyMediumBluegray400,
=======
                          style: theme.textTheme.bodyMedium,
>>>>>>> origin/main
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: Text(
                          "Size 42",
<<<<<<< HEAD
                          style: CustomTextStyles.bodyMediumBluegray400,
=======
                          style: theme.textTheme.bodyMedium,
>>>>>>> origin/main
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
