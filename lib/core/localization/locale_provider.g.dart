// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'locale_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// {@template locale_provider}
/// A provider for the locale of the application.
/// {@endtemplate}

@ProviderFor(LocaleController)
const localeControllerProvider = LocaleControllerProvider._();

/// {@template locale_provider}
/// A provider for the locale of the application.
/// {@endtemplate}
final class LocaleControllerProvider
    extends $NotifierProvider<LocaleController, Locale> {
  /// {@template locale_provider}
  /// A provider for the locale of the application.
  /// {@endtemplate}
  const LocaleControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'localeControllerProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$localeControllerHash();

  @$internal
  @override
  LocaleController create() => LocaleController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Locale value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Locale>(value),
    );
  }
}

String _$localeControllerHash() => r'f51f6a31a51cd2ffe5703502b2b165c338435417';

/// {@template locale_provider}
/// A provider for the locale of the application.
/// {@endtemplate}

abstract class _$LocaleController extends $Notifier<Locale> {
  Locale build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<Locale, Locale>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<Locale, Locale>,
              Locale,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
