import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:web_portfolio/core/extension/nav_items.dart';
import 'package:web_portfolio/core/theming/theme/themes.dart';

/// {@template button_item_navbar}
/// A button item for the navbar.
/// {@endtemplate}
class ButtonItemNavBar extends HookConsumerWidget {
  /// {@macro button_item_navbar}
  const ButtonItemNavBar({
    super.key,
    required this.onPressedSection,
    required this.item,
    required this.theme,
  });

  /// The function to be called when the button is pressed
  final void Function(NavItemType type) onPressedSection;

  /// The index of the button
  final int item;

  /// The theme of the button
  final AppThemes theme;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isHover = useState(false);
    return MouseRegion(
      onEnter: (_) => isHover.value = true,
      onExit: (_) => isHover.value = false,
      child: GestureDetector(
        onTap: () => onPressedSection.call(context.navItems[item].type),
        child: AnimatedContainer(
          alignment: Alignment.center,
          duration: const Duration(milliseconds: 100),
          curve: Curves.easeOutCubic,
          width: isHover.value ? 150 : 100,
          decoration: BoxDecoration(
            color: isHover.value
                ? theme.baseTheme.baseColorPalette.cardColor.withValues(
                    alpha: 0.5,
                  )
                : Colors.transparent,
            borderRadius: BorderRadius.circular(100),
          ),
          child: Text(
            context.navItems[item].text,
            style: theme.baseTheme.typography.lgMedium.copyWith(
              color: isHover.value
                  ? theme.baseTheme.baseColorPalette.secondaryColor
                  : theme.baseTheme.baseColorPalette.primaryTextColor,
            ),
          ),
        ),
      ),
    );
  }
}
