import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:web_portfolio/core/localization/locale_provider.dart';
import 'package:web_portfolio/core/router/app_router.dart';
import 'package:web_portfolio/core/theming/core/provider/theming_provider.dart';
import 'package:web_portfolio/l10n/arb/app_localizations.dart';

/// {@template app}
/// The main widget for the application.
/// {@endtemplate}
class App extends StatelessWidget {
  /// {@macro app}
  App({super.key}) : _appRouter = AppRouter();

  /// the app router
  final AppRouter _appRouter;

  @override
  Widget build(BuildContext context) {
    return ProviderScope(child: _RouterWidget(appRouter: _appRouter));
  }
}

/// {@template router_widget}
/// The router widget for the application.
/// {@endtemplate}
class _RouterWidget extends ConsumerWidget {
  /// {@macro router_widget}
  const _RouterWidget({required this.appRouter});

  /// The father needs the router to be passed to the child widget
  /// to avoid rebuild the router when we use hot reload
  final AppRouter appRouter;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themingProvider);
    final locale = ref.watch(localeControllerProvider);
    return MaterialApp.router(
      theme: theme.baseTheme.theme,
      builder: (context, child) {
        final mediaQuery = MediaQuery.of(context);
        return MediaQuery(
          data: mediaQuery.copyWith(
            textScaler: TextScaler.linear(
              mediaQuery.textScaler
                  .clamp(minScaleFactor: 1.0, maxScaleFactor: 1.2)
                  .scale(1.0),
            ),
          ),
          child: child!,
        );
      },
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter.config(),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: locale,
    );
  }
}
