import 'package:web_portfolio/core/theming/theme/themes.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theming_provider.g.dart';

@Riverpod(keepAlive: true)
class Theming extends _$Theming {
  @override
  AppThemes build() {
    return AppThemes.dark;
  }
}
