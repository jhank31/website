// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/android.svg
  String get android => 'assets/icons/android.svg';

  /// File path: assets/icons/apple.svg
  String get apple => 'assets/icons/apple.svg';

  /// File path: assets/icons/bloc.svg
  String get bloc => 'assets/icons/bloc.svg';

  /// File path: assets/icons/blue_circle.svg
  String get blueCircle => 'assets/icons/blue_circle.svg';

  /// File path: assets/icons/dart.svg
  String get dart => 'assets/icons/dart.svg';

  /// File path: assets/icons/firebase.svg
  String get firebase => 'assets/icons/firebase.svg';

  /// File path: assets/icons/flutter.svg
  String get flutter => 'assets/icons/flutter.svg';

  /// File path: assets/icons/github.svg
  String get github => 'assets/icons/github.svg';

  /// File path: assets/icons/instagram.svg
  String get instagram => 'assets/icons/instagram.svg';

  /// File path: assets/icons/linkedin.svg
  String get linkedin => 'assets/icons/linkedin.svg';

  /// File path: assets/icons/pink_circle.svg
  String get pinkCircle => 'assets/icons/pink_circle.svg';

  /// Directory path: assets/icons
  String get path => 'assets/icons';

  /// List of all assets
  List<String> get values => [
    android,
    apple,
    bloc,
    blueCircle,
    dart,
    firebase,
    flutter,
    github,
    instagram,
    linkedin,
    pinkCircle,
  ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/finandina.png
  AssetGenImage get finandina =>
      const AssetGenImage('assets/images/finandina.png');

  /// File path: assets/images/homecenter.png
  AssetGenImage get homecenter =>
      const AssetGenImage('assets/images/homecenter.png');

  /// File path: assets/images/longevo.png
  AssetGenImage get longevo => const AssetGenImage('assets/images/longevo.png');

  /// File path: assets/images/pideky.png
  AssetGenImage get pideky => const AssetGenImage('assets/images/pideky.png');

  /// File path: assets/images/profile.png
  AssetGenImage get profile => const AssetGenImage('assets/images/profile.png');

  /// Directory path: assets/images
  String get path => 'assets/images';

  /// List of all assets
  List<AssetGenImage> get values => [
    finandina,
    homecenter,
    longevo,
    pideky,
    profile,
  ];
}

class $AssetsRiveGen {
  const $AssetsRiveGen();

  /// File path: assets/rive/black_cat_hero.riv
  String get blackCatHero => 'assets/rive/black_cat_hero.riv';

  /// Directory path: assets/rive
  String get path => 'assets/rive';

  /// List of all assets
  List<String> get values => [blackCatHero];
}

class Assets {
  const Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsRiveGen rive = $AssetsRiveGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
    this.animation,
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class AssetGenImageAnimation {
  const AssetGenImageAnimation({
    required this.isAnimation,
    required this.duration,
    required this.frames,
  });

  final bool isAnimation;
  final Duration duration;
  final int frames;
}
