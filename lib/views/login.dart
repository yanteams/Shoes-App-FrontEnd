import 'package:flutter/material.dart';
import 'package:flutter_shop_app/utils/snippet.dart';
import 'package:flutter_shop_app/utils/custom_outlined_button.dart';
import 'package:flutter_shop_app/utils/custom_checkbox_button.dart';
import 'package:flutter_shop_app/utils/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool englishQuestion = false;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(horizontal: 51.h),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                              svgPath: ImageConstant.imgVector,
                              height: 34.v,
                              width: 110.h),
                          SizedBox(height: 27.v),
                          Text("Sign in.",
                              style: theme.textTheme.headlineLarge),
                          SizedBox(height: 20.v),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Don’t have an account?",
                                    style: CustomTextStyles
                                        .titleSmallBluegray400_1),
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtJoinus(context);
                                    },
                                    child: Padding(
                                        padding: EdgeInsets.only(left: 2.h),
                                        child: Text("Join us",
                                            style: CustomTextStyles
                                                .titleSmallBlack900)))
                              ]),
                          SizedBox(height: 19.v),
                          CustomTextFormField(
                              controller: emailController,
                              hintText: "Email",
                              textInputType: TextInputType.emailAddress,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 17.h, vertical: 18.v)),
                          SizedBox(height: 20.v),
                          CustomTextFormField(
                              controller: passwordController,
                              hintText: "Password",
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              suffix: Container(
                                  margin: EdgeInsets.fromLTRB(
                                      30.h, 15.v, 12.h, 14.v),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgHidden)),
                              suffixConstraints:
                              BoxConstraints(maxHeight: 53.v),
                              obscureText: true,
                              contentPadding: EdgeInsets.only(
                                  left: 17.h, top: 18.v, bottom: 18.v)),
                          SizedBox(height: 12.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: CustomCheckboxButton(
                                  alignment: Alignment.centerLeft,
                                  text: "Remember me?",
                                  value: englishQuestion,
                                  padding: EdgeInsets.symmetric(vertical: 3.v),
                                  onChange: (value) {
                                    englishQuestion = value;
                                  })),
                          Container(
                              width: 253.h,
                              margin: EdgeInsets.only(
                                  left: 35.h, top: 23.v, right: 36.h),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text:
                                        "By continuting, I agree to Nike’s ",
                                        style: CustomTextStyles
                                            .titleSmallBluegray400),
                                    TextSpan(
                                        text: "Privancy Policy",
                                        style: CustomTextStyles
                                            .titleSmallPrimaryContainer),
                                    TextSpan(
                                        text: " and ",
                                        style: CustomTextStyles
                                            .titleSmallBluegray400),
                                    TextSpan(
                                        text: "Term of Use.",
                                        style: CustomTextStyles
                                            .titleSmallGray60005)
                                  ]),
                                  textAlign: TextAlign.center)),
                          SizedBox(height: 11.v),
                          CustomOutlinedButton(
                              height: 60.v,
                              text: "Sign in",
                              buttonStyle:
                              CustomButtonStyles.outlineErrorContainerTL30,
                              onTap: () {
                                onTapSignin(context);
                              }),
                          SizedBox(height: 15.v),
                          Text("Or continue open by account",
                              style: CustomTextStyles
                                  .titleSmallBluegray400SemiBold),
                          SizedBox(height: 13.v),
                          CustomOutlinedButton(
                              height: 60.v,
                              text: "Google",
                              leftIcon: Container(
                                  margin: EdgeInsets.only(right: 8.h),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgGoogleglogo)),
                              buttonStyle: CustomButtonStyles.outlineGrayTL30,
                              buttonTextStyle:
                              CustomTextStyles.titleMediumPrimary),
                          SizedBox(height: 5.v)
                        ])))));
  }

  onTapTxtJoinus(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.registerScreen);
  }

  onTapSignin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.shopAllTabContainerScreen);
  }
}
