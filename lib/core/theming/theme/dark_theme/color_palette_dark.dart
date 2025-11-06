import 'package:flutter/material.dart';
import 'package:web_portfolio/core/theming/core/base_color_palette.dart';

/// {@template color_palette_dark}
/// Color palette for the dark theme – Obsidian Flow Edition
/// {@endtemplate}
final class ColorPaletteDark extends BaseColorPalette {
  // Primary (púrpuras fríos)
  @override
  Color get primary100 => const Color(0xFFB8A6FF);

  @override
  Color get primary200 => const Color(0xFFA28CFF);

  @override
  Color get primary300 => const Color(0xFF8B75FF);

  @override
  Color get primary400 => const Color(0xFF7D5FFF);

  @override
  Color get primary500 => const Color(0xFF6A4DFF);

  // Secondary (cian líquido)
  @override
  Color get secondary100 => const Color(0xFFB8FFF5);

  @override
  Color get secondary200 => const Color(0xFF80FFF0);

  @override
  Color get secondary300 => const Color(0xFF40F0E0);

  @override
  Color get secondary400 => const Color(0xFF1AE6D6);

  @override
  Color get secondary500 => const Color(0xFF00E0C7);

  // Core colors
  @override
  Color get primaryColor => primary500;

  @override
  Color get secondaryColor => secondary500;

  @override
  ColorScheme get colorScheme => ColorScheme.fromSeed(seedColor: primary500);

  // Backgrounds
  @override
  Color get backgroundColor => const Color.fromARGB(255, 14, 13, 22);

  // Texts
  @override
  Color get primaryTextColor => const Color(0xFFE6E8EB);

  // Cards
  @override
  Color get cardColor => const Color.fromARGB(255, 30, 27, 50);
}
