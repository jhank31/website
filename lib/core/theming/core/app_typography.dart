import 'package:flutter/material.dart';

/// {@template app_typography}
/// App typography for the app
/// {@endtemplate}
class AppTypography {
  /// {@macro app_typography}
  const AppTypography();

  /// The primary font family
  String get primaryFontFamily => 'Poppins';

  //* xs = extra small
  TextStyle get xsRegular => const TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.15,
      );

  TextStyle get xsMedium => const TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.15,
      );

  TextStyle get xsBold => const TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w700,
        letterSpacing: 0.15,
      );

  //* sm = small
  TextStyle get smRegular => const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.15,
      );

  TextStyle get smMedium => const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
      );

  TextStyle get smSemiBold => const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w600,
      );

  //* md = medium
  TextStyle get mdRegular => const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
      );

  TextStyle get mdMedium => const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.15,
      );

  TextStyle get mdBold => const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w700,
        letterSpacing: 0.15,
      );

  //* lg = large
  TextStyle get lgRegular => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
      );

  TextStyle get lgMedium => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
      );

  TextStyle get lgSemiBold => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        letterSpacing: 0.15,
      );

  //* xl = extra large
  TextStyle get xlRegular => const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.15,
      );

  TextStyle get xlMedium => const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
      );

  TextStyle get xlSemiBold => const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
      );

  TextStyle get xlBold => const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w700,
        letterSpacing: 0.15,
      );

  //* xxl = extra extra large
  TextStyle get xxlRegular => const TextStyle(
        fontSize: 21,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.15,
      );

  TextStyle get xxlMedium => const TextStyle(
        fontSize: 21,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.15,
      );

  TextStyle get xxlSemiBold => const TextStyle(
        fontSize: 21,
        fontWeight: FontWeight.w600,
      );

  TextStyle get xxlBold => const TextStyle(
        fontSize: 21,
        fontWeight: FontWeight.w700,
        letterSpacing: 0.15,
      );

  //* xxxl = extra extra extra large
  TextStyle get xxxlRegular => const TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.15,
      );

  TextStyle get xxxlMedium => const TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.w500,
      );

  TextStyle get xxxlBold => const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        letterSpacing: 0.15,
      );

  //* extraxxl = extra extra extra extra large
  TextStyle get extraxxlRegular => const TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.15,
      );

  TextStyle get extraxxlMedium => const TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w500,
      );

  TextStyle get extraxxlSemiBold => const TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w600,
      );

  TextStyle get extraxxlBold => const TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w700,
      );
}
