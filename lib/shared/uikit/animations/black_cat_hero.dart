import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:web_portfolio/gen/assets/assets.gen.dart';
import 'package:web_portfolio/shared/responsive/responsive.dart';

/// {@template black_cat_hero}
/// The black cat hero animation.
/// {@endtemplate}
class BlackCatHero extends StatelessWidget {
  /// {@macro black_cat_hero}
  const BlackCatHero({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return RiveWidgetBuilder(
      fileLoader: FileLoader.fromAsset(
        Assets.rive.blackCatHero,
        riveFactory: Factory.rive,
      ),
      builder: (context, state) => switch (state) {
        RiveLoading() => const Center(child: CircularProgressIndicator()),
        RiveFailed() => ErrorWidget.withDetails(
          message: state.error.toString(),
          error: FlutterError(state.error.toString()),
        ),
        RiveLoaded() => Container(
          constraints: BoxConstraints(
            maxHeight: context.isMobile ? height * 0.5 : height * 0.7,
            maxWidth: context.isMobile ? width : width * 0.3,
          ),
          child: RiveWidget(controller: state.controller, fit: Fit.contain),
        ),
      },
    );
  }
}
