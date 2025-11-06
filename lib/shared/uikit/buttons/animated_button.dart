import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:web_portfolio/core/theming/core/provider/theming_provider.dart';

/// {@template animated_button}
/// A animated button widget
/// It has a hover effect and a tap effect
/// {@endtemplate}
class AnimatedButton extends HookConsumerWidget {
  /// {@macro animated_button}
  const AnimatedButton({
    super.key,
    required this.child,
    this.onTap,
    this.height,
    this.width,
  });

  /// The child of the button
  final Widget child;

  /// The on tap callback
  final VoidCallback? onTap;

  /// height of the button
  final double? height;

  /// width of the button
  final double? width;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themingProvider);
    final isElevated = useState(false);
    return MouseRegion(
      onEnter: (_) => isElevated.value = true,
      onExit: (_) => isElevated.value = false,
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 100),
          curve: Curves.easeOutCubic,
          height: height,
          width: width,
          decoration: BoxDecoration(
            color: theme.baseTheme.baseColorPalette.primaryColor,
            borderRadius: BorderRadius.circular(20),
            boxShadow: isElevated.value
                ? [
                    BoxShadow(
                      color: theme.baseTheme.baseColorPalette.primary300
                          .withValues(alpha: 0.5),
                      blurRadius: 15,
                    ),
                  ]
                : null,
          ),
          child: Center(child: child),
        ),
      ),
    );
  }
}
