import 'package:flutter/material.dart';
import 'package:flutter_shop_app/utils/snippet.dart';
import 'package:flutter_shop_app/utils/custom_outlined_button.dart';
import 'package:flutter_shop_app/utils/custom_checkbox_button.dart';
import 'package:flutter_shop_app/utils/custom_text_form_field.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);

  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  bool englishQuestion = false;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 49.h, vertical: 13.v),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 71.v),
                  CustomImageView(
                      svgPath: ImageConstant.imgVector,
                      height: 34.v,
                      width: 110.h),
                  Container(
                      width: 248.h,
                      margin: EdgeInsets.only(
                          left: 43.h, top: 23.v, right: 38.h),
                      child: Text("Welcome to Nike’s Members.",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.headline6)),
                  SizedBox(height: 22.v),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(bottom: 1.v),
                            child: Text("Don’t have an account?",
                                style: CustomTextStyles.titleSmallBluegray400_1)),
                        GestureDetector(
                            onTap: () {
                              onTapTxtSignin(context);
                            },
                            child: Padding(
                                padding: EdgeInsets.only(left: 2.h),
                                child: Text("Sign in",
                                    style: CustomTextStyles.titleSmallBlack900)))
                      ]),
                  CustomTextFormField(
                      controller: firstNameController,
                      margin: EdgeInsets.only(left: 6.h, top: 18.v),
                      hintText: "First Name",
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 17.h, vertical: 18.v)),
                  CustomTextFormField(
                      controller: lastNameController,
                      margin: EdgeInsets.only(left: 6.h, top: 20.v),
                      hintText: "Last Name",
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 17.h, vertical: 18.v)),
                  CustomTextFormField(
                      controller: phoneController,
                      margin: EdgeInsets.only(left: 6.h, top: 20.v),
                      hintText: "Number Phone",
                      textInputType: TextInputType.phone,
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 17.h, vertical: 18.v)),
                  CustomTextFormField(
                      controller: passwordController,
                      margin: EdgeInsets.only(left: 6.h, top: 20.v),
                      hintText: "Password",
                      textInputType: TextInputType.visiblePassword,
                      suffix: Container(
                          margin:
                          EdgeInsets.fromLTRB(30.h, 15.v, 12.h, 14.v),
                          child: CustomImageView(
                              svgPath: ImageConstant.imgHidden)),
                      suffixConstraints: BoxConstraints(maxHeight: 53.v),
                      obscureText: true,
                      contentPadding: EdgeInsets.only(
                          left: 17.h, top: 18.v, bottom: 18.v)),
                  CustomTextFormField(
                      controller: confirmpasswordController,
                      margin: EdgeInsets.only(left: 6.h, top: 20.v),
                      hintText: "Confirm Password",
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.visiblePassword,
                      suffix: Container(
                          margin:
                          EdgeInsets.fromLTRB(30.h, 15.v, 12.h, 14.v),
                          child: CustomImageView(
                              svgPath: ImageConstant.imgHidden)),
                      suffixConstraints: BoxConstraints(maxHeight: 53.v),
                      obscureText: true,
                      contentPadding: EdgeInsets.only(
                          left: 17.h, top: 18.v, bottom: 18.v)),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: CustomCheckboxButton(
                          alignment: Alignment.centerLeft,
                          text: "Remember me?",
                          value: englishQuestion,
                          margin: EdgeInsets.only(left: 6.h, top: 12.v),
                          padding: EdgeInsets.symmetric(vertical: 3.v),
                          onChange: (value) {
                            englishQuestion = value;
                          })),
                  Container(
                      width: 253.h,
                      margin: EdgeInsets.only(
                          left: 41.h, top: 19.v, right: 34.h),
                      child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "By continuing, I agree to Nike’s ",
                                style:
                                CustomTextStyles.titleSmallBluegray400),
                            TextSpan(
                                text: "Privacy Policy",
                                style: CustomTextStyles.titleSmallPrimaryContainer),
                            TextSpan(
                                text: " and ",
                                style: CustomTextStyles.titleSmallBluegray400),
                            TextSpan(
                                text: "Terms of Use.",
                                style: CustomTextStyles.titleSmallGray60005)
                          ]),
                          textAlign: TextAlign.center)),
                  CustomOutlinedButton(
                      height: 60.v,
                      text: "Join us",
                      margin: EdgeInsets.only(left: 6.h, top: 11.v),
                      buttonStyle:
                      CustomButtonStyles.outlineErrorContainerTL30),
                  SizedBox(height: 15.v),
                  Text("Or join us by account",
                      style: CustomTextStyles.titleSmallBluegray400SemiBold)
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: CustomOutlinedButton(
            height: 60.v,
            text: "Google",
            margin: EdgeInsets.only(
                left: 55.h, right: 49.h, bottom: 37.v),
            leftIcon: Container(
                margin: EdgeInsets.only(right: 8.h),
                child: CustomImageView(
                    svgPath: ImageConstant.imgGoogleglogo)),
            buttonStyle: CustomButtonStyles.outlineGrayTL301,
            buttonTextStyle: CustomTextStyles.titleMediumPrimary),
      ),
    );
  }

  onTapTxtSignin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }
}