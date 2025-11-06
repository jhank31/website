import 'package:flutter/material.dart';
import 'package:web_portfolio/core/const/sizes.dart';
import 'package:web_portfolio/core/theming/theme/themes.dart';
import 'package:web_portfolio/core/utils/launch_email.dart';
import 'package:web_portfolio/l10n/arb/app_localizations.dart';
import 'package:web_portfolio/shared/responsive/responsive.dart';
import 'package:web_portfolio/shared/uikit/uikit.dart';

/// {@template get_in_touch_section}
/// The get in touch section for the home page
/// {@endtemplate}
class GetInTouchSection extends StatelessWidget {
  /// {@macro get_in_touch_section}
  const GetInTouchSection({super.key, required this.theme, required this.l10n});

  /// The theme of the section
  final AppThemes theme;

  /// The localizations of the section
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: Breakpoints.desktop),
      child: Padding(
        padding: const EdgeInsets.all(Sizes.p24),
        child: OpaqueBlurContainer(
          blur: 10,
          opacity: 0.5,
          color: theme.baseTheme.baseColorPalette.cardColor,
          padding: EdgeInsets.symmetric(
            vertical: Sizes.p26,
            horizontal: Sizes.p26,
          ),
          child: IntrinsicHeight(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                ShaderMask(
                  shaderCallback: (Rect bounds) {
                    return LinearGradient(
                      colors: [
                        theme.baseTheme.baseColorPalette.primaryColor,
                        theme.baseTheme.baseColorPalette.secondaryColor,
                      ],
                    ).createShader(bounds);
                  },
                  blendMode: BlendMode.srcIn,
                  child: Icon(
                    Icons.people_alt,
                    size: Sizes.p60,
                    color: theme.baseTheme.baseColorPalette.primaryColor,
                  ),
                ),
                SizedBox(height: Sizes.p26),
                Text(
                  l10n.get_in_touch_description,
                  style: theme.baseTheme.typography.lgRegular,
                ),
                SizedBox(height: Sizes.p26),
                AnimatedButton(
                  height: !context.isMobile ? 50 : 40,
                  width: !context.isMobile ? 200 : 150,
                  onTap: () {
                    LaunchEmail.call(
                      email: l10n.my_email,
                      subject: l10n.my_email_subject,
                      body: l10n.my_email_body,
                    );
                  },
                  child: Text(l10n.get_in_touch),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
