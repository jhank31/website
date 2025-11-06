import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'locale_provider.g.dart';

/// {@template locale_provider}
/// A provider for the locale of the application.
/// {@endtemplate}
@Riverpod(keepAlive: true)
class LocaleController extends _$LocaleController {
  @override
  Locale build() {
    return Locale('en');
  }

  void setLocale(Locale locale) {
    state = locale;
  }

  void clearLocale() {
    state = Locale('en');
  }
}
