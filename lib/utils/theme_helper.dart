import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_shop_app/utils/snippet.dart';

String _appTheme = "primary";

/// Helper class for managing themes and colors.
class ThemeHelper {
  // A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    _appTheme = _newTheme;
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: appTheme.whiteA700,
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: colorScheme.errorContainer,
            width: 2.h,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(36.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary.withOpacity(0.5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return appTheme.black900;
          }
          return colorScheme.onSurface;
        }),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return appTheme.black900;
          }
          return colorScheme.onSurface;
        }),
        side: BorderSide(
          width: 1,
        ),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: appTheme.gray20001,
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
    bodyLarge: TextStyle(
      color: appTheme.blueGray400,
      fontSize: 16.fSize,
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w400,
    ),
    bodyMedium: TextStyle(
      color: appTheme.blueGray400,
      fontSize: 14.fSize,
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w400,
    ),
    bodySmall: TextStyle(
      color: appTheme.gray60001,
      fontSize: 12.fSize,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400,
    ),
    displayLarge: TextStyle(
      color: appTheme.whiteA700,
      fontSize: 60.fSize,
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w900,
    ),
    displayMedium: TextStyle(
      color: colorScheme.primary,
      fontSize: 48.fSize,
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w600,
    ),
    headlineLarge: TextStyle(
      color: appTheme.black900,
      fontSize: 30.fSize,
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w700,
    ),
    headlineMedium: TextStyle(
      color: appTheme.black900,
      fontSize: 28.fSize,
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w600,
    ),
    headlineSmall: TextStyle(
      color: appTheme.black900,
      fontSize: 24.fSize,
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w600,
    ),
    labelLarge: TextStyle(
      color: appTheme.gray50,
      fontSize: 13.fSize,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w700,
    ),
    titleLarge: TextStyle(
      color: appTheme.black900,
      fontSize: 20.fSize,
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w600,
    ),
    titleMedium: TextStyle(
      color: appTheme.black900,
      fontSize: 16.fSize,
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w500,
    ),
    titleSmall: TextStyle(
      color: colorScheme.onPrimaryContainer,
      fontSize: 14.fSize,
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w500,
    ),
  );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0XFF1A1D1F),
    primaryContainer: Color(0XFF706D6D),
    secondary: Color(0XFF706D6D),
    secondaryContainer: Color(0XFF1A1D1F),
    tertiary: Color(0XFF706D6D),
    tertiaryContainer: Color(0XFF1A1D1F),

    // Background colors
    background: Color(0XFF706D6D),

    // Surface colors
    surface: Color(0XFF706D6D),
    surfaceTint: Color(0XFFACACAC),
    surfaceVariant: Color(0XFF1A1D1F),

    // Error colors
    error: Color(0XFFACACAC),
    errorContainer: Color(0XFF272B30),
    onError: Color(0XFF1A1D1F),
    onErrorContainer: Color(0XFFEBEBEB),

    // On colors(text colors)
    onBackground: Color(0XFF111111),
    onInverseSurface: Color(0XFF1A1D1F),
    onPrimary: Color(0XFFACACAC),
    onPrimaryContainer: Color(0XFF111111),
    onSecondary: Color(0XFF111111),
    onSecondaryContainer: Color(0XFFACACAC),
    onTertiary: Color(0XFF111111),
    onTertiaryContainer: Color(0XFFACACAC),

    // Other colors
    outline: Color(0XFFACACAC),
    outlineVariant: Color(0XFF706D6D),
    scrim: Color(0XFF706D6D),
    shadow: Color(0XFFACACAC),

    // Inverse colors
    inversePrimary: Color(0XFF706D6D),
    inverseSurface: Color(0XFFACACAC),

    // Pending colors
    onSurface: Color(0XFF111111),
    onSurfaceVariant: Color(0XFFACACAC),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Black
  Color get black900 => Color(0XFF000000);

  // BlueGray
  Color get blueGray400 => Color(0XFF8D8D8D);
  Color get blueGray40001 => Color(0XFF8A8F96);
  Color get blueGray40002 => Color(0XFF888888);
  Color get blueGray500 => Color(0XFF677489);

  // DeepOrange
  Color get deepOrange400 => Color(0XFFFF6955);

  // Gray
  Color get gray100 => Color(0XFFF6F6F6);
  Color get gray200 => Color(0XFFEFEFEF);
  Color get gray20001 => Color(0XFFE8E8E8);
  Color get gray300 => Color(0XFFE5E5E5);
  Color get gray400 => Color(0XFFB6B6B6);
  Color get gray40001 => Color(0XFFB4B4B4);
  Color get gray50 => Color(0XFFFCFCFC);
  Color get gray500 => Color(0XFF9A9FA5);
  Color get gray5001 => Color(0XFFF8FAFF);
  Color get gray600 => Color(0XFF6C6C6C);
  Color get gray60001 => Color(0XFF6F767E);
  Color get gray60002 => Color(0XFF757575);
  Color get gray60003 => Color(0XFF6F767D);
  Color get gray60004 => Color(0XFF7A7D81);
  Color get gray60005 => Color(0XFF6F6D6D);
  Color get gray800 => Color(0XFF3A3A3A);
  Color get gray900 => Color(0XFF111729);

  // Red
  Color get red500 => Color(0XFFEA4335);
  Color get red800 => Color(0XFFBC4527);

  // White
  Color get whiteA700 => Color(0XFFFFFFFF);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
