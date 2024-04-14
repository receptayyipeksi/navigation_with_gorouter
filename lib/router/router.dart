import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation_with_gorouter/details_page.dart';
import 'package:navigation_with_gorouter/home_page.dart';
import 'package:navigation_with_gorouter/profile_page.dart';
import 'package:navigation_with_gorouter/splash_page.dart';

import 'route_path.dart';

class AppRouter {
  static RoutePath path = RoutePath(path: "", pathEnd: "");

  static RoutePath homePath = RoutePath(path: "", pathEnd: "home");

  static RoutePath detailsPath =
      RoutePath(path: homePath.path(), pathEnd: "details");

  static RoutePath profilePath = RoutePath(path: "", pathEnd: "profile");

  GoRouter getRouter() {
    return GoRouter(
      initialLocation: path.pathEnd(),
      routes: <RouteBase>[
        GoRoute(
          path: path.pathEnd(),
          builder: (BuildContext context, GoRouterState state) {
            return const SplashPage();
          },
        ),
        GoRoute(
          path: homePath.pathEnd(),
          builder: (BuildContext context, GoRouterState state) {
            return HomePage(key: path.key(fullPath: state.fullPath));
          },
          routes: <RouteBase>[
            GoRoute(
              path: detailsPath.pathEnd(),
              builder: (BuildContext context, GoRouterState state) {
                return const DetailsPage();
              },
            )
          ],
        ),
        GoRoute(
          path: profilePath.pathEnd(),
          builder: (BuildContext context, GoRouterState state) {
            return ProfilePage(key: path.key(fullPath: state.fullPath));
          },
        ),
      ],
    );
  }
}
