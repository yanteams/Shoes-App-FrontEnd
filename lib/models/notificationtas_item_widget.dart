import 'package:flutter/material.dart';
import 'package:flutter_shop_app/utils/snippet.dart';
import 'package:flutter_shop_app/widgets/custom_text_style.dart';

// ignore: must_be_immutable
class NotificationtasItemWidget extends StatelessWidget {
  const NotificationtasItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: 8.h,
            right: 33.h,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRectangle39829,
                height: 60.adaptSize,
                width: 60.adaptSize,
                radius: BorderRadius.circular(
                  12.h,
                ),
              ),
              Container(
                height: 48.v,
                width: 260.h,
                margin: EdgeInsets.only(
                  left: 15.h,
                  top: 5.v,
                  bottom: 6.v,
                ),
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Nike",
                                style: CustomTextStyles.titleMediumSemiBold,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 5.h),
                                child: Text(
                                  "@nike",
                                  style: CustomTextStyles.bodyMediumGray60003,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 9.v),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "10% discount on products ",
                                  style:
                                      CustomTextStyles.bodyMediumBluegray400_1,
                                ),
                                TextSpan(
                                  text: "Nike Waffle Debut",
                                  style: CustomTextStyles.titleSmallBlack900,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        "1h",
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 18.v),
        Divider(),
      ],
    );
  }
}
