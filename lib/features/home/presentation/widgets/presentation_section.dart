import 'package:flutter/material.dart';
import 'package:web_portfolio/core/const/gap.dart';
import 'package:web_portfolio/core/const/sizes.dart';
import 'package:web_portfolio/core/theming/theme/themes.dart';
import 'package:web_portfolio/l10n/arb/app_localizations.dart';
import 'package:web_portfolio/shared/responsive/responsive.dart';
import 'package:web_portfolio/shared/uikit/uikit.dart';

/// {@template presentation_section}
/// The presentation section for the home view.
/// {@endtemplate}
class PresentationSection extends StatelessWidget {
  /// {@macro presentation_section}
  const PresentationSection({
    super.key,
    required this.l10n,
    required this.theme,
    required this.onPressedGetInTouch,
  });

  /// The localizations of the presentation section.
  final AppLocalizations l10n;

  /// The theme of the presentation section.
  final AppThemes theme;

  /// The onPressed get in touch button
  final VoidCallback onPressedGetInTouch;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    return Container(
      constraints: BoxConstraints(
        minHeight: context.isMobile ? 350 : 500,
        maxWidth: Breakpoints.desktop,
      ),
      width: double.infinity,
      height: context.isMobile ? height * 0.75 : height * 0.5,
      padding: EdgeInsets.symmetric(horizontal: Sizes.p12),
      child: Builder(
        builder: (context) {
          return Wrap(
            alignment: WrapAlignment.spaceEvenly,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              const BlackCatHero(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    textAlign: TextAlign.start,
                    l10n.my_presentation,
                    style: theme.baseTheme.typography.xxlBold,
                  ),
                  Gap.height16,
                  AnimatedButton(
                    height: 50,
                    width: 200,
                    onTap: onPressedGetInTouch,
                    child: Text(
                      l10n.get_in_touch,
                      style: theme.baseTheme.typography.lgSemiBold,
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
