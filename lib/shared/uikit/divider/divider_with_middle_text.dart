import 'package:flutter/material.dart';
import 'package:web_portfolio/core/const/sizes.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:web_portfolio/core/theming/core/provider/theming_provider.dart';

/// {@template divider_with_middle_text}
/// A divider with a middle text
/// {@endtemplate}
class DividerWithMiddleText extends ConsumerWidget {
  /// {@macro divider_with_middle_text}
  const DividerWithMiddleText({
    super.key,
    required this.text,
    required this.textStyle,
  });

  /// the text to display
  final String text;

  /// the style of the text
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themingProvider);
    return Row(
      children: [
        Expanded(child: Divider()),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: Sizes.p24),
          child: ShaderMask(
            blendMode: BlendMode.srcIn,
            shaderCallback: (rect) => LinearGradient(
              colors: [
                theme.baseTheme.baseColorPalette.primary500,
                theme.baseTheme.baseColorPalette.secondary500,
              ],
            ).createShader(rect),
            child: Text(text, style: textStyle),
          ),
        ),
        Expanded(child: Divider()),
      ],
    );
  }
}
