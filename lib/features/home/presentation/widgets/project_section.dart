import 'package:flutter/material.dart';
import 'package:web_portfolio/core/const/sizes.dart';
import 'package:web_portfolio/core/extension/projects.dart';
import 'package:web_portfolio/core/theming/theme/themes.dart';
import 'package:web_portfolio/l10n/arb/app_localizations.dart';
import 'package:web_portfolio/shared/responsive/responsive.dart';
import 'package:web_portfolio/shared/uikit/uikit.dart';

/// {@template project_section}
/// The project section for the home page.
/// {@endtemplate}
class ProjectSection extends StatelessWidget {
  /// {@macro project_section}
  const ProjectSection({super.key, required this.theme, required this.l10n});

  /// The theme of the project section
  final AppThemes theme;

  /// The l10n of the project section
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: !context.isMobile
          ? MediaQuery.sizeOf(context).width * 0.6
          : MediaQuery.sizeOf(context).width * 0.9,
      constraints: BoxConstraints(maxWidth: Breakpoints.desktop),
      padding: EdgeInsets.symmetric(vertical: Sizes.p24),
      child: Wrap(
        spacing: !context.isMobile ? Sizes.p26 : Sizes.p8,
        runSpacing: Sizes.p18,
        alignment: WrapAlignment.center,
        children: context.projects.map((project) {
          return CardProject(
            key: ValueKey(project.title),
            theme: theme,
            project: project,
            l10n: l10n,
          );
        }).toList(),
      ),
    );
  }
}
