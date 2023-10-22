import 'package:flutter_shop_app/utils/snippet.dart';
import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:flutter_shop_app/widgets/custom_text_style.dart';
=======
>>>>>>> origin/main

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.black900,
        body: SizedBox(
          width: double.maxFinite,
          child: SizedBox(
            height: 121.v,
            width: 248.h,
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 35.h),
                    child: Text(
                      "Nike".toUpperCase(),
                      style: theme.textTheme.displayLarge,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    "Just Do It.".toUpperCase(),
                    style: CustomTextStyles.titleMediumWhiteA700,
                  ),
                ),
                CustomImageView(
                  svgPath: ImageConstant.imgVector,
                  height: 78.v,
                  width: 248.h,
                  alignment: Alignment.bottomCenter,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
