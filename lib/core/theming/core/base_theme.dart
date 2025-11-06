import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:web_portfolio/core/theming/core/app_typography.dart';
import 'package:web_portfolio/core/theming/core/base_color_palette.dart';

abstract class BaseTheme {
  const BaseTheme();

  /// Color palette from where the theme will be get the colora
  BaseColorPalette get baseColorPalette;

  /// The color Scheme of the theme
  ColorScheme get colorScheme => baseColorPalette.colorScheme;

  /// The typography of the theme
  AppTypography get typography => const AppTypography();

  /// Colors list of the gradient
  List<Color> get appBarGradientColors;

  /// The gradient colors of the primary button
  List<Color> get primaryButtonGradientColors;

  /// The primary color of the button
  Color get primaryButtonColor => baseColorPalette.primaryColor;

  /// Wheter the theme is dark or not
  bool get isDark;

  Brightness get brightness => isDark ? Brightness.dark : Brightness.light;

  Brightness get brightnessStatusBar => Brightness.light;

  SystemUiOverlayStyle get systemUiOverlayStyle => SystemUiOverlayStyle(
    statusBarColor: Colors.transparent, // solo para android
    statusBarIconBrightness: brightnessStatusBar, // solo para android
    // solo para ios
    statusBarBrightness: brightnessStatusBar == Brightness.light
        ? Brightness.dark
        : Brightness.light,
  );

  ThemeData get theme;

  ThemeData get baseTheme => ThemeData(
    scaffoldBackgroundColor: baseColorPalette.backgroundColor,
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: baseColorPalette.primaryTextColor),
      bodyMedium: TextStyle(color: baseColorPalette.primaryTextColor),
      bodySmall: TextStyle(color: baseColorPalette.primaryTextColor),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: baseColorPalette.primaryColor,
      foregroundColor: baseColorPalette.white,
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: baseColorPalette.primaryColor,
      secondary: baseColorPalette.secondaryColor,
      brightness: brightness,
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        textStyle: WidgetStateProperty.all(
          TextStyle(color: baseColorPalette.primaryTextColor),
        ),
      ),
    ),
    drawerTheme: DrawerThemeData(
      backgroundColor: baseColorPalette.backgroundColor,
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: baseColorPalette.white,
    ),
    dialogTheme: DialogThemeData(surfaceTintColor: baseColorPalette.white),
    cardTheme: CardThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      color: baseColorPalette.white,
    ),
    listTileTheme: ListTileThemeData(
      iconColor: baseColorPalette.white,
      textColor: baseColorPalette.primaryTextColor,
      tileColor: baseColorPalette.cardColor,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
    useMaterial3: true,
    fontFamily: typography.primaryFontFamily,
    brightness: brightness,
    primaryColor: baseColorPalette.primaryColor,
    dropdownMenuTheme: DropdownMenuThemeData(
      menuStyle: MenuStyle(
        backgroundColor: WidgetStatePropertyAll(baseColorPalette.white),
        surfaceTintColor: WidgetStatePropertyAll(baseColorPalette.white),
      ),
    ),
  );
}
