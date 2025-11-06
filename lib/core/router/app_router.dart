import 'package:auto_route/auto_route.dart';
import 'package:web_portfolio/core/router/app_router.gr.dart';

/// {@template app_router}
/// The router for the application.
/// {@endtemplate}
@AutoRouterConfig(
  /// replaceInRouteName is used to replace the screen or page in the route name
  replaceInRouteName: 'Screen|Page|View,Route',
)
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [AutoRoute(page: HomeRoute.page, path: '/')];
}
