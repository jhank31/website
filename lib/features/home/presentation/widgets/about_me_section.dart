import 'package:flutter/material.dart';
import 'package:web_portfolio/core/const/sizes.dart';
import 'package:web_portfolio/core/theming/theme/themes.dart';
import 'package:web_portfolio/gen/assets/assets.gen.dart';
import 'package:web_portfolio/l10n/arb/app_localizations.dart';
import 'package:web_portfolio/shared/responsive/responsive.dart';

/// {@template about_me_section}
/// The about me section for the home page.
/// {@endtemplate}
class AboutMeSection extends StatelessWidget {
  /// {@macro about_me_section}
  const AboutMeSection({
    super.key,
    required this.l10n,
    required this.theme,
  });

  /// The localizations for the about me section.
  final AppLocalizations l10n;
  /// The theme for the about me section.
  final AppThemes theme;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: !context.isMobile
          ? MediaQuery.sizeOf(context).width * 0.6
          : MediaQuery.sizeOf(context).width * 0.9,
      constraints: BoxConstraints(maxWidth: Breakpoints.desktop),
      padding: EdgeInsets.symmetric(vertical: Sizes.p24),
      child: Wrap(
        alignment: WrapAlignment.center,
        spacing: Sizes.p24,
        runSpacing: Sizes.p24,
        children: [
          Image.asset(
            Assets.images.profile.path,
            width: 200,
            height: 200,
          ),
          Text(
            l10n.about_me_description,
            style: theme.baseTheme.typography.lgRegular,
          ),
        ],
      ),
    );
  }
}
