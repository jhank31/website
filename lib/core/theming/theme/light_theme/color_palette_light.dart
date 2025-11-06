import 'package:flutter/material.dart';
import 'package:web_portfolio/core/theming/core/base_color_palette.dart';

/// {@template color_palette_light}
/// Color palette for the light theme
/// {@endtemplate}
final class ColorPaletteLight extends BaseColorPalette {
  @override
  Color get primary100 => Color(0xFF4565B7);

  @override
  Color get primary200 => Color(0xFF4285F4);

  @override
  Color get primary300 => Color(0xFF1E88E5);

  @override
  Color get primary400 => Color(0xFF1565C0);

  @override
  Color get primary500 => Color(0xFF173EA5);

  @override
  Color get secondary100 => Colors.orange.shade100;

  @override
  Color get secondary200 => Colors.orange.shade200;

  @override
  Color get secondary300 => Colors.orange.shade300;

  @override
  Color get secondary400 => Colors.orange.shade400;

  @override
  Color get secondary500 => Colors.orange.shade500;

  @override
  Color get primaryColor => primary300;

  @override
  Color get secondaryColor => secondary300;

  @override
  Color get backgroundColor => white;

  @override
  ColorScheme get colorScheme => ColorScheme.fromSeed(seedColor: primary300);

  @override
  Color get primaryTextColor => primary300;

  @override
  Color get cardColor => white;
}
