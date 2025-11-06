import 'dart:async';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

/// {@template bootstrap}
/// This is the entry point of the application.
/// {@endtemplate}
Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  WidgetsFlutterBinding.ensureInitialized();
  await RiveNative.init();

  runApp(await builder());
}
