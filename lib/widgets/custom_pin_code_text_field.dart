import 'package:flutter_shop_app/utils/snippet.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class CustomPinCodeTextField extends StatelessWidget {
  CustomPinCodeTextField({
    Key? key,
    required this.context,
    required this.onChanged,
    this.alignment,
    this.margin,
    this.controller,
    this.textStyle,
    this.hintStyle,
    this.validator,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final EdgeInsetsGeometry? margin;

  final BuildContext context;

  final TextEditingController? controller;

  final TextStyle? textStyle;

  final TextStyle? hintStyle;

  Function(String) onChanged;

  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: pinCodeTextFieldWidget,
          )
        : pinCodeTextFieldWidget;
  }

  Widget get pinCodeTextFieldWidget => Padding(
        padding: margin ?? EdgeInsets.zero,
        child: PinCodeTextField(
          appContext: context,
          controller: controller,
          length: 4,
          keyboardType: TextInputType.number,
          textStyle: textStyle ?? theme.textTheme.displayMedium,
          hintStyle: hintStyle ?? theme.textTheme.displayMedium,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
          ],
          enableActiveFill: true,
          pinTheme: PinTheme(
            fieldHeight: 72.h,
            fieldWidth: 56.h,
            shape: PinCodeFieldShape.box,
            borderRadius: BorderRadius.circular(12.h),
            inactiveFillColor: appTheme.gray50,
            activeFillColor: appTheme.gray50,
            selectedFillColor: appTheme.gray200,
            inactiveColor: appTheme.gray500,
            activeColor: appTheme.gray500,
            selectedColor: Colors.transparent,
          ),
          onChanged: (value) => onChanged(value),
          validator: validator,
        ),
      );
}
