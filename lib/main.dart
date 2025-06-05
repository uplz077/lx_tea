import 'package:flutter/material.dart';
import "package:go_router/go_router.dart";

import "router/routes/route_types.dart";
import "router/app_router.dart";
import "cons/cons.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    final GoRouter _router = GoRouter(
      initialLocation: AppRoute.splash.url, // 恢复为splash作为初始路由
      routes: <RouteBase>[appRoute],
      onException: (BuildContext ctx, GoRouterState state, GoRouter router) {
        router.go(AppRoute.globalError.url, extra: state.uri.toString());
      },
    );

    return MaterialApp.router(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: ThemeColor.blue.color),
      ),
      routerConfig: _router,
    );
  }
}
