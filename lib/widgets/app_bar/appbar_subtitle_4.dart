import 'package:flutter_shop_app/utils/snippet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop_app/widgets/custom_text_style.dart';

// ignore: must_be_immutable
class AppbarSubtitle4 extends StatelessWidget {
  AppbarSubtitle4({
    Key? key,
    required this.text,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String text;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Text(
          text,
          style: CustomTextStyles.titleMediumBluegray400.copyWith(
            color: appTheme.blueGray400,
          ),
        ),
      ),
    );
  }
}
