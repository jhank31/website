import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:web_portfolio/core/const/gap.dart';
import 'package:web_portfolio/core/const/sizes.dart';
import 'package:web_portfolio/core/theming/theme/themes.dart';
import 'package:web_portfolio/core/utils/project_utils.dart';
import 'package:web_portfolio/l10n/arb/app_localizations.dart';
import 'package:web_portfolio/shared/uikit/uikit.dart';
import 'dart:js_interop';

@JS('window.open')
external JSAny _openWindow(JSString url, JSString target);

void openUrl(String url) {
  _openWindow(url.toJS, '_blank'.toJS);
}

/// {@template card_project}
/// Card project for the home page
/// {@endtemplate}
class CardProject extends HookConsumerWidget {
  /// {@macro card_project}
  const CardProject({
    super.key,
    required this.theme,
    required this.project,
    required this.l10n,
  });

  /// The theme of the card
  final AppThemes theme;

  /// The project of the card
  final ProjectUtils project;

  /// The l10n of the card
  final AppLocalizations l10n;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isHover = useState(false);
    return MouseRegion(
      onEnter: (_) => isHover.value = true,
      onExit: (_) => isHover.value = false,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        curve: Curves.easeOutCubic,
        width: isHover.value ? 325 : 300,
        height: isHover.value ? 525 : 500,
        decoration: BoxDecoration(
          color: theme.baseTheme.baseColorPalette.cardColor,
          borderRadius: BorderRadius.circular(Sizes.p16),
          border: Border.all(
            color: theme.baseTheme.baseColorPalette.primary300,
          ),
          boxShadow: isHover.value
              ? [
                  BoxShadow(
                    color: theme.baseTheme.baseColorPalette.primaryColor,
                    blurRadius: 10,
                  ),
                ]
              : null,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(Sizes.p16)),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset(project.image, fit: BoxFit.cover),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: OpaqueBlurContainer(
                  padding: EdgeInsets.zero,
                  borderRadius: 0,
                  color: theme.baseTheme.baseColorPalette.cardColor,
                  blur: 20,
                  opacity: 0.7,
                  child: Column(
                    spacing: Sizes.p16,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Gap.height8,
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: Sizes.p16),
                        child: Text(
                          project.title,
                          style: theme.baseTheme.typography.mdBold,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: Sizes.p16),
                        child: Text(
                          overflow: TextOverflow.visible,
                          project.description,
                          style: theme.baseTheme.typography.smRegular,
                        ),
                      ),
                      OpaqueBlurContainer(
                        borderRadius: 0,
                        padding: EdgeInsets.symmetric(
                          horizontal: Sizes.p16,
                          vertical: Sizes.p12,
                        ),
                        color: theme.baseTheme.baseColorPalette.cardColor,
                        blur: 20,
                        opacity: 0.7,
                        child: Row(
                          spacing: Sizes.p8,
                          children: [
                            Text(
                              l10n.available_on,
                              style: theme.baseTheme.typography.smRegular,
                            ),
                            const Spacer(),
                            if (project.iosUrl != null)
                              IconButton(
                                onPressed: () => openUrl(project.iosUrl!),
                                icon: Icon(
                                  Icons.apple,
                                  size: Sizes.p18,
                                  color: theme.baseTheme.baseColorPalette.white,
                                ),
                              ),
                            if (project.androidUrl != null)
                              IconButton(
                                onPressed: () => openUrl(project.androidUrl!),
                                icon: Icon(
                                  Icons.android,
                                  size: Sizes.p18,
                                  color: theme.baseTheme.baseColorPalette.white,
                                ),
                              ),
                            if (project.webUrl != null)
                              IconButton(
                                onPressed: () => openUrl(project.webUrl!),
                                icon: Icon(
                                  Icons.web,
                                  size: Sizes.p18,
                                  color: theme.baseTheme.baseColorPalette.white,
                                ),
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
