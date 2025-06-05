import 'package:go_router/go_router.dart';
import 'route_types.dart';

// 页面
import 'package:lx_tea/views/starter/app_splash.dart';
import 'package:lx_tea/views/error/app_start_error.dart';

List<GoRoute> get globalRoutes => [
  GoRoute(
    path: AppRoute.splash.path,
    builder: (_, __) => const AppSplashPage(),
  ),
  GoRoute(
    path: AppRoute.startError.path,
    builder: (_, GoRouterState state) => AppStartErrorPage(error: state.extra),
  ),
  GoRoute(
    path: AppRoute.globalError.path,
    builder: (_, GoRouterState state) => AppStartErrorPage(error: state.extra),
  ),
];
