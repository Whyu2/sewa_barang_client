import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:valoku_app/core/routers/routers.dart';
import 'package:valoku_app/features/home/presentation/pages/home_page.dart';

List<GoRoute> _registerRoutes() {
  return [
    GoRoute(
      name: RouterConstans.home,
      path: RouterConstans.home,
      builder: (BuildContext context, GoRouterState state) {
        return const HomePage();
      },
    ),
  ];
}

final GoRouter appRouter = GoRouter(
  routes: _registerRoutes(),
  initialLocation: RouterConstans.home,
);
