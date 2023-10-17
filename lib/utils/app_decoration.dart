import 'package:flutter/material.dart';
import 'package:flutter_shop_app/utils/snippet.dart';

class AppDecoration {
  static BoxDecoration get fillGray => BoxDecoration(
    color: appTheme.gray200,
  );
  static BoxDecoration get fillWhiteA => BoxDecoration(
    color: appTheme.whiteA700,
  );

  static BoxDecoration get gradientGrayToWhiteA => BoxDecoration(
    border: Border(
      top: BorderSide(
        color: appTheme.black900,
        width: 1.h,
      ),
    ),
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [
        appTheme.gray100,
        appTheme.whiteA700.withOpacity(0),
      ],
    ),
  );

  static BoxDecoration get outlineBlack => BoxDecoration(
    border: Border.all(
      color: appTheme.black900,
      width: 4.h,
    ),
  );

  static BoxDecoration get primary => BoxDecoration(
    color: appTheme.black900,
  );
}

class BorderRadiusStyle {
  static BorderRadius get roundedBorder18 => BorderRadius.circular(
    18.h,
  );
  static BorderRadius get roundedBorder46 => BorderRadius.circular(
    46.h,
  );
}


double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;
