import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:web_portfolio/core/const/sizes.dart';
import 'package:web_portfolio/core/localization/locale_provider.dart';
import 'package:web_portfolio/core/theming/core/provider/theming_provider.dart';

class LanguageSelector extends ConsumerWidget {
  const LanguageSelector({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.watch(localeControllerProvider);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _LangButton(
          label: 'EN',
          active: locale.languageCode == 'en',
          onTap: () => ref
              .read(localeControllerProvider.notifier)
              .setLocale(const Locale('en')),
        ),
        const SizedBox(width: 12),
        _LangButton(
          label: 'ES',
          active: locale.languageCode == 'es',
          onTap: () => ref
              .read(localeControllerProvider.notifier)
              .setLocale(const Locale('es')),
        ),
      ],
    );
  }
}

/// {@template lang_button}
/// A button to select the language of the application.
/// {@endtemplate}
class _LangButton extends ConsumerWidget {
  /// {@macro lang_button}
  const _LangButton({
    required this.label,
    required this.active,
    required this.onTap,
  });

  /// The label of the button.
  final String label;

  /// Whether the button is active.
  final bool active;

  /// The callback to be called when the button is tapped.
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themingProvider);
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(
          horizontal: Sizes.p14,
          vertical: Sizes.p6,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Sizes.p20),
          gradient: active
              ? LinearGradient(
                  colors: [
                    theme.baseTheme.baseColorPalette.primaryColor,
                    theme.baseTheme.baseColorPalette.secondaryColor,
                  ],
                )
              : null,
        ),
        child: Text(
          label,
          style: theme.baseTheme.typography.mdRegular.copyWith(
            color: theme.baseTheme.baseColorPalette.primaryTextColor,
          ),
        ),
      ),
    );
  }
}
