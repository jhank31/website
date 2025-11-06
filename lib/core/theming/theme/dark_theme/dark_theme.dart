import 'package:flutter/material.dart';
import 'package:web_portfolio/core/theming/core/base_color_palette.dart';
import 'package:web_portfolio/core/theming/core/base_theme.dart';
import 'package:web_portfolio/core/theming/theme/dark_theme/color_palette_dark.dart';

/// {@template dark_theme}
/// Dark theme for the app
/// {@endtemplate}
class DarkTheme extends BaseTheme {
  /// {@macro dark_theme}
  const DarkTheme();

  @override
  List<Color> get appBarGradientColors => [
    baseColorPalette.backgroundColor,
    baseColorPalette.primary500,
    baseColorPalette.primary400,
  ];

  @override
  BaseColorPalette get baseColorPalette => ColorPaletteDark();

  @override
  bool get isDark => true;

  @override
  ThemeData get theme => baseTheme;

  @override
  List<Color> get primaryButtonGradientColors => [
    baseColorPalette.primary400,
    baseColorPalette.secondaryColor,
  ];
}
