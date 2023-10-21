import 'package:flutter/material.dart';
import 'package:flutter_shop_app/utils/snippet.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillGray => BoxDecoration(
    color: appTheme.gray20002,
  );
  static BoxDecoration get fillGray100 => BoxDecoration(
    color: appTheme.gray100,
  );
  static BoxDecoration get fillWhiteA => BoxDecoration(
    color: appTheme.whiteA700,
  );

  // Gradient decorations
  static BoxDecoration get gradientOnErrorContainerToWhiteA => BoxDecoration(
    border: Border(
      top: BorderSide(
        color: appTheme.black900,
        width: 2.h,
      ),
    ),
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [
        theme.colorScheme.onErrorContainer,
        appTheme.whiteA700.withOpacity(0),
      ],
    ),
  );

  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
    border: Border.all(
      color: appTheme.black900,
      width: 4.h,
    ),
  );
  static BoxDecoration get outlineGreen => BoxDecoration(
    border: Border.all(
      color: appTheme.green800,
      width: 2.h,
    ),
  );

  // Primary decorations
  static BoxDecoration get primary => BoxDecoration(
    color: appTheme.black900,
  );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder22 => BorderRadius.circular(
    22.h,
  );
  static BorderRadius get circleBorder49 => BorderRadius.circular(
    49.h,
  );

  // Rounded borders
  static BorderRadius get roundedBorder12 => BorderRadius.circular(
    12.h,
  );
  static BorderRadius get roundedBorder18 => BorderRadius.circular(
    18.h,
  );
  static BorderRadius get roundedBorder39 => BorderRadius.circular(
    39.h,
  );
  static BorderRadius get roundedBorder46 => BorderRadius.circular(
    46.h,
  );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
