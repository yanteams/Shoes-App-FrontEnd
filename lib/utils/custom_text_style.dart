import 'package:flutter/material.dart';
import 'package:flutter_shop_app/utils/size_utils.dart';
import 'package:flutter_shop_app/utils/theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeGray60002 => theme.textTheme.bodyLarge!.copyWith(
    color: appTheme.gray60002,
  );
  static get bodyMediumBlack900 => theme.textTheme.bodyMedium!.copyWith(
    color: appTheme.black900,
  );
  static get bodyMediumBlack900_1 => theme.textTheme.bodyMedium!.copyWith(
    color: appTheme.black900,
  );
  static get bodyMediumBluegray500 => theme.textTheme.bodyMedium!.copyWith(
    color: appTheme.blueGray500,
  );
  static get bodyMediumGray600 => theme.textTheme.bodyMedium!.copyWith(
    color: appTheme.gray600,
  );
  static get bodyMediumGray60002 => theme.textTheme.bodyMedium!.copyWith(
    color: appTheme.gray60002,
  );
  static get bodyMediumGray60004 => theme.textTheme.bodyMedium!.copyWith(
    color: appTheme.gray60004,
  );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
    color: theme.colorScheme.primary,
  );
  static get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
    color: appTheme.black900,
  );
  static get bodySmallBluegray40001 => theme.textTheme.bodySmall!.copyWith(
    color: appTheme.blueGray40001,
  );
  // Headline text style
  static get headlineLargeWhiteA700 => theme.textTheme.headlineLarge!.copyWith(
    color: appTheme.whiteA700,
  );
  // Label text style
  static get labelLargeDeeporange400 => theme.textTheme.labelLarge!.copyWith(
    color: appTheme.deepOrange400,
    fontSize: 12.fSize,
    fontWeight: FontWeight.w500,
  );
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
    color: theme.colorScheme.primary,
  );
  // Title text style
  static get titleMediumBluegray400 => theme.textTheme.titleMedium!.copyWith(
    color: appTheme.blueGray400,
    fontWeight: FontWeight.w600,
  );
  static get titleMediumBluegray400_1 => theme.textTheme.titleMedium!.copyWith(
    color: appTheme.blueGray400,
  );
  static get titleMediumGray50 => theme.textTheme.titleMedium!.copyWith(
    color: appTheme.gray50.withOpacity(0.75),
    fontWeight: FontWeight.w600,
  );
  static get titleMediumGray50SemiBold => theme.textTheme.titleMedium!.copyWith(
    color: appTheme.gray50,
    fontWeight: FontWeight.w600,
  );
  static get titleMediumGray900 => theme.textTheme.titleMedium!.copyWith(
    color: appTheme.gray900,
  );
  static get titleMediumInter => theme.textTheme.titleMedium!.inter;
  static get titleMediumOnPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get titleMediumOnPrimaryContainerSemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
    color: theme.colorScheme.primary,
    fontWeight: FontWeight.w600,
  );
  static get titleMediumRed800 => theme.textTheme.titleMedium!.copyWith(
    color: appTheme.red800,
    fontWeight: FontWeight.w600,
  );
  static get titleMediumSemiBold => theme.textTheme.titleMedium!.copyWith(
    fontWeight: FontWeight.w600,
  );
  static get titleMediumWhiteA700 => theme.textTheme.titleMedium!.copyWith(
    color: appTheme.whiteA700,
    fontWeight: FontWeight.w800,
  );
  static get titleSmallBlack900 => theme.textTheme.titleSmall!.copyWith(
    color: appTheme.black900,
  );
  static get titleSmallBluegray400 => theme.textTheme.titleSmall!.copyWith(
    color: appTheme.blueGray400,
  );
  static get titleSmallBluegray400SemiBold =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray400,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallBluegray400_1 => theme.textTheme.titleSmall!.copyWith(
    color: appTheme.blueGray400,
  );
  static get titleSmallGray60005 => theme.textTheme.titleSmall!.copyWith(
    color: appTheme.gray60005,
  );
  static get titleSmallInterGray50 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.gray50,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallInterGray50SemiBold =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.gray50,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallInterPrimary =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallInterPrimarySemiBold =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallOnPrimary => theme.textTheme.titleSmall!.copyWith(
    color: theme.colorScheme.onPrimary,
  );
  static get titleSmallPrimaryContainer => theme.textTheme.titleSmall!.copyWith(
    color: theme.colorScheme.primaryContainer,
  );
}

extension on TextStyle {
  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }
}
