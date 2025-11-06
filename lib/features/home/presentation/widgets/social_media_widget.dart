import 'package:flutter/material.dart';
import 'package:web_portfolio/core/const/sizes.dart';
import 'package:web_portfolio/gen/assets/assets.gen.dart';
import 'package:web_portfolio/shared/uikit/uikit.dart';

/// {@template social_media_section}
/// Social media section for the home page.
/// {@endtemplate}
class SocialMediaSection extends StatelessWidget {
  /// {@macro social_media_section}
  const SocialMediaSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Sizes.p24),
      child: Wrap(
        spacing: Sizes.p24,
        runSpacing: Sizes.p24,
        children: [
          SocialMediaChip(
            url:
                'https://www.linkedin.com/in/jhancarlos-lenis-arango-5a6012212',
            icon: Assets.icons.linkedin,
          ),
          SocialMediaChip(
            url: 'https://www.instagram.com/jhanklear31/',
            icon: Assets.icons.instagram,
          ),
          SocialMediaChip(
            url: 'https://github.com/jhank31/jhank31',
            icon: Assets.icons.github,
          ),
        ],
      ),
    );
  }
}
