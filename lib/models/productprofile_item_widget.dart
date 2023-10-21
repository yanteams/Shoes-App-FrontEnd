import 'package:flutter/material.dart';
import 'package:flutter_shop_app/utils/snippet.dart';

class ProductprofileItemWidget extends StatelessWidget {
  const ProductprofileItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 238.h,
      child: Padding(
        padding: EdgeInsets.only(bottom: 16.v),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgRectangle39824238x238,
              height: 238.adaptSize,
              width: 238.adaptSize,
            ),
            SizedBox(height: 12.v),
            Text(
              "Nike Waffle Debut",
              style: CustomTextStyles.titleMediumOnPrimaryContainerSemiBold,
            ),
            SizedBox(height: 5.v),
            Text(
              "Women’s Shoes",
              style: theme.textTheme.bodyMedium,
            ),
            SizedBox(height: 5.v),
            Row(
              children: [
                Text(
                  "105",
                  style: theme.textTheme.titleSmall,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 9.h),
                  child: Text(
                    "130",
                    style: CustomTextStyles.titleSmallOnPrimary.copyWith(
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
