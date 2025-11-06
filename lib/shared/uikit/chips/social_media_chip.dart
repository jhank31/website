import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_portfolio/core/const/sizes.dart';

/// {@template social_media_chip}
/// A chip for the social media section.
/// {@endtemplate}
class SocialMediaChip extends HookConsumerWidget {
  /// {@macro social_media_chip}
  const SocialMediaChip({required this.url, required this.icon, super.key});

  /// The url of the social media
  final String url;

  /// The icon of the social media
  final String icon;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isHover = useState(false);
    final iconSize = useState(Sizes.p48);
    return MouseRegion(
      onEnter: (_) {
        isHover.value = true;
        iconSize.value = Sizes.p60;
      },
      onExit: (_) {
        isHover.value = false;
        iconSize.value = Sizes.p48;
      },
      child: GestureDetector(
        onTap: () {
          launchUrl(Uri.parse(url));
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 100),
          curve: Curves.easeOutCubic,
          width: iconSize.value,
          height: iconSize.value,
          child: SvgPicture.asset(icon),
        ),
      ),
    );
  }
}
