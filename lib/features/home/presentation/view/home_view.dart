import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:web_portfolio/core/const/gap.dart';
import 'package:web_portfolio/core/extension/nav_items.dart';
import 'package:web_portfolio/core/theming/core/provider/theming_provider.dart';
import 'package:web_portfolio/core/utils/launch_email.dart';
import 'package:web_portfolio/features/home/presentation/widgets/widgets.dart';
import 'package:web_portfolio/l10n/l10n.dart';
import 'package:web_portfolio/shared/responsive/responsive.dart';
import 'package:web_portfolio/shared/uikit/uikit.dart';

/// {@template home_view}
/// The home view for the application.
/// {@endtemplate}
class HomeView extends HookConsumerWidget {
  /// {@macro home_view}
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scaffoldKey = useMemoized(() => GlobalKey<ScaffoldState>(), []);
    final aboutKey = useMemoized(() => GlobalKey(), []);
    final skillsKey = useMemoized(() => GlobalKey(), []);
    final projectsKey = useMemoized(() => GlobalKey(), []);
    final contactKey = useMemoized(() => GlobalKey(), []);
    final scrollController = useScrollController();

    void scrollToSection(GlobalKey key) {
      final context = key.currentContext;
      if (context != null) {
        Scrollable.ensureVisible(
          context,
          duration: const Duration(milliseconds: 700),
          curve: Curves.easeInOutCubic,
        );
      }
    }

    final l10n = context.l10n;
    final theme = ref.watch(themingProvider);
    return Scaffold(
      key: scaffoldKey,
      appBar:
          /// Header
          PreferredSize(
            preferredSize: const Size.fromHeight(80),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: context.isMobile
                    ? MediaQuery.sizeOf(context).width * 0.02
                    : MediaQuery.sizeOf(context).width * 0.05,
              ),
              child: ResponsiveHeader(
                onPressedSection: (type) => scrollToSection(switch (type) {
                  NavItemType.home => aboutKey,
                  NavItemType.skills => skillsKey,
                  NavItemType.projects => projectsKey,
                  NavItemType.contact => contactKey,
                }),
                theme: theme,
                l10n: l10n,
                onPressedLogo: () => scrollToSection(aboutKey),
                onPressedMenu: () => scaffoldKey.currentState?.openEndDrawer(),
              ),
            ),
          ),
      endDrawer: EndDrawer(
        scaffoldKey: scaffoldKey,
        onSelectedItem: (type) {
          scaffoldKey.currentState?.closeEndDrawer();
          scrollToSection(switch (type) {
            NavItemType.home => aboutKey,
            NavItemType.skills => skillsKey,
            NavItemType.projects => projectsKey,
            NavItemType.contact => contactKey,
          });
        },
      ),
      backgroundColor: theme.baseTheme.baseColorPalette.backgroundColor,
      body: ListView(
        scrollDirection: Axis.vertical,
        controller: scrollController,
        children: [
          Column(
            children: [
              /// Presentation
              PresentationSection(
                l10n: l10n,
                theme: theme,
                onPressedGetInTouch: () {
                  LaunchEmail.call(
                    email: l10n.my_email,
                    subject: l10n.my_email_subject,
                    body: l10n.my_email_body,
                  );
                },
              ),

              DividerWithMiddleText(
                key: aboutKey,
                text: l10n.about_me,
                textStyle: theme.baseTheme.typography.extraxxlBold,
              ),

              /// About me section
              AboutMeSection(l10n: l10n, theme: theme),

              DividerWithMiddleText(
                key: skillsKey,
                text: l10n.skills,
                textStyle: theme.baseTheme.typography.extraxxlBold,
              ),

              /// Skills section
              SkillsSection(theme: theme, l10n: l10n),

              DividerWithMiddleText(
                key: projectsKey,
                text: l10n.projects,
                textStyle: theme.baseTheme.typography.extraxxlBold,
              ),

              /// Projects section
              ProjectSection(theme: theme, l10n: l10n),

              DividerWithMiddleText(
                key: contactKey,
                text: l10n.get_in_touch,
                textStyle: theme.baseTheme.typography.extraxxlBold,
              ),

              /// Get in touch section
              GetInTouchSection(theme: theme, l10n: l10n),

              DividerWithMiddleText(
                text: l10n.social_media,
                textStyle: theme.baseTheme.typography.extraxxlBold,
              ),

              /// Social media section
              SocialMediaSection(),

              Gap.height16,

              Text("${l10n.created_by} ${l10n.created_with_flutter}"),

              Gap.height32,
            ],
          ),
        ],
      ),
    );
  }
}
