import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:web_portfolio/features/home/presentation/view/home_view.dart';

/// {@template home_page}
/// The home page for the application.
/// {@endtemplate}
@RoutePage()
class HomePage extends StatelessWidget {
  /// {@macro home_page}
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeView();
  }
} 