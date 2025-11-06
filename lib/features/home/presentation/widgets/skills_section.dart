import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:web_portfolio/core/const/sizes.dart';
import 'package:web_portfolio/core/const/skills_icons.dart';
import 'package:web_portfolio/core/theming/theme/themes.dart';
import 'package:web_portfolio/gen/assets/assets.gen.dart';
import 'package:web_portfolio/l10n/arb/app_localizations.dart';
import 'package:web_portfolio/shared/responsive/responsive.dart';
import 'package:web_portfolio/shared/uikit/containers/opaque_blur_container.dart';

/// {@template skills_section}
/// The skills section for the home view.
/// {@endtemplate}
class SkillsSection extends StatelessWidget {
  /// {@macro skills_section}
  const SkillsSection({super.key, required this.theme, required this.l10n});

  /// The theme of the section.
  final AppThemes theme;

  /// The localization of the section.
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return Container(
      width: width,
      constraints: BoxConstraints(maxWidth: Breakpoints.desktop),
      padding: EdgeInsets.symmetric(vertical: Sizes.p24),
      child: Wrap(
        spacing: Sizes.p16,
        alignment: WrapAlignment.center,
        crossAxisAlignment: WrapCrossAlignment.center,

        runSpacing: Sizes.p16,
        children: [
          Container(
            width: !context.isMobile
                ? MediaQuery.sizeOf(context).width * 0.3
                : MediaQuery.sizeOf(context).width * 0.9,
            height: !context.isMobile
                ? MediaQuery.sizeOf(context).height * 0.4
                : MediaQuery.sizeOf(context).height * 0.3,
            alignment: Alignment.center,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  child: SvgPicture.asset(
                    Assets.icons.pinkCircle,
                    width: !context.isMobile ? 100 : 50,
                    height: !context.isMobile ? 100 : 50,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: SvgPicture.asset(
                    Assets.icons.blueCircle,
                    width: !context.isMobile ? 150 : 70,
                    height: !context.isMobile ? 150 : 70,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(
                    !context.isMobile ? Sizes.p32 : Sizes.p16,
                  ),
                  child: OpaqueBlurContainer(
                    opacity: 0.8,
                    blur: 20,
                    color: theme.baseTheme.baseColorPalette.cardColor,
                    child: Center(
                      child: GridView.builder(
                        shrinkWrap: true,
                        itemCount: SkillsIcons.icons.length,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          childAspectRatio: 1.5,
                          mainAxisSpacing: Sizes.p16,
                          crossAxisSpacing: Sizes.p16,
                        ),
                        itemBuilder: (context, index) => SvgPicture.asset(
                          key: ValueKey(SkillsIcons.icons[index]),
                          SkillsIcons.icons[index],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: !context.isMobile
                ? MediaQuery.sizeOf(context).width * 0.3
                : MediaQuery.sizeOf(context).width * 0.9,
            child: Center(
              child: Text(
                l10n.what_i_can_do,
                style: theme.baseTheme.typography.lgRegular,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
