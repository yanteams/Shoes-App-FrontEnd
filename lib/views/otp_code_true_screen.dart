import 'package:flutter_shop_app/utils/snippet.dart';
import 'package:flutter_shop_app/widgets/custom_button_style.dart';
import 'package:flutter_shop_app/widgets/custom_outlined_button.dart';
import 'package:flutter_shop_app/widgets/custom_pin_code_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop_app/widgets/custom_text_style.dart';

class OtpCodeTrueScreen extends StatelessWidget {
  const OtpCodeTrueScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 27.h,
            top: 69.v,
            right: 27.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgComponent1,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 57.h,
                  top: 31.v,
                ),
                child: Text(
                  "Verification",
                  style: theme.textTheme.headlineSmall,
                ),
              ),
              Container(
                width: 234.h,
                margin: EdgeInsets.only(
                  left: 57.h,
                  top: 18.v,
                ),
                child: Text(
                  "We just send you a verify code. Check your inbox to get them.",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyMediumPrimary.copyWith(
                    height: 1.71,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(56.h, 21.v, 56.h, 5.v),
                  child: Column(
                    children: [
                      CustomPinCodeTextField(
                        context: context,
                        margin: EdgeInsets.symmetric(horizontal: 1.h),
                        onChanged: (value) {},
                      ),
                      SizedBox(height: 14.v),
                      SizedBox(
                        width: 120.h,
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Didn’t receive OTP?\n",
                                style: CustomTextStyles.bodyMediumGray60004,
                              ),
                              TextSpan(
                                text: " ",
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 4.v),
                      Text(
                        "Resend OTP",
                        style: CustomTextStyles.titleMediumOnPrimaryContainer,
                      ),
                      SizedBox(height: 34.v),
                      CustomOutlinedButton(
                        height: 60.v,
                        text: "Sign in",
                        leftIcon: Container(
                          margin: EdgeInsets.only(right: 8.h),
                          child: CustomImageView(
                            svgPath: ImageConstant.imgBrightness,
                          ),
                        ),
                        buttonStyle: CustomButtonStyles.outlineBlueGrayTL30,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
