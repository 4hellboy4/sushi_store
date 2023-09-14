import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sushi_app/pages/intro_page/intro_page.dart';

class MyRouter {
  static const introPage = '/intropage';
  static const home = '/';
  static const error = '/error';

  static Widget _introPageBuilder(BuildContext context, GoRouterState state) =>
      const IntroPage();
  // static Widget _homeBuilder(BuildContext context, GoRouterState state) =>
  //   const IntroPage();

  static final _router = GoRouter(
    initialLocation: introPage,
    routes: <GoRoute>[
      // GoRoute(
      //   path: home,
      //   builder: _homeBuilder,
      // ),
      GoRoute(
        path: introPage,
        builder: _introPageBuilder,
      ),
    ],
    // errorBuilder: _errorBuilder,
  );

  static GoRouter get router => _router;
}
