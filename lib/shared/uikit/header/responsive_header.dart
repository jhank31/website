import 'package:flutter/material.dart';
import 'package:web_portfolio/core/const/sizes.dart';
import 'package:web_portfolio/core/extension/nav_items.dart';
import 'package:web_portfolio/core/theming/theme/themes.dart';
import 'package:web_portfolio/l10n/arb/app_localizations.dart';
import 'package:web_portfolio/shared/responsive/responsive.dart';
import 'package:web_portfolio/shared/uikit/uikit.dart';

/// {@template responsive_header}
/// A responsive header for the application.
/// {@endtemplate}
class ResponsiveHeader extends StatelessWidget {
  /// {@macro responsive_header}
  const ResponsiveHeader({
    super.key,
    required this.theme,
    required this.l10n,
    required this.onPressedLogo,
    required this.onPressedMenu,
    required this.onPressedSection,
  });

  /// The theme of the application
  final AppThemes theme;

  /// The localizations of the application
  final AppLocalizations l10n;

  /// The onPressed callback for the menu button
  final VoidCallback onPressedMenu;

  /// The onPressed callback for the logo button
  final VoidCallback onPressedLogo;

  /// The onPressed callback for the section button
  final void Function(NavItemType type) onPressedSection;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: Sizes.p16,
        horizontal: !context.isDesktop ? Sizes.p16 : 0,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: Sizes.p12,
        vertical: Sizes.p8,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: theme.baseTheme.appBarGradientColors,
        ),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextButton(
            onPressed: onPressedLogo,
            child: Text(
              l10n.my_name_abbreviation,
              style: theme.baseTheme.typography.lgSemiBold.copyWith(
                color: theme.baseTheme.baseColorPalette.primaryTextColor,
              ),
            ),
          ),
          const LanguageSelector(),
          Spacer(),
          if (!context.isMobile) ...[
            ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: context.navItems.length,
              itemBuilder: (context, index) {
                return ButtonItemNavBar(
                  onPressedSection: onPressedSection,
                  item: index,
                  theme: theme,
                );
              },
            ),
          ] else ...[
            IconButton(
              padding: EdgeInsets.zero,
              onPressed: onPressedMenu,
              icon: const Icon(Icons.menu),
              color: theme.baseTheme.baseColorPalette.primaryTextColor,
            ),
          ],
        ],
      ),
    );
  }
}
