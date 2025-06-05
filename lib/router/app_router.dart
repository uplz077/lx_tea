import 'package:go_router/go_router.dart';

// 路由表
import "routes/route_types.dart";
import 'routes/global_route.dart';
import 'routes/root_route.dart';

RouteBase get appRoute {
  return GoRoute(
    path: AppRoute.home.path,
    redirect: (_, __) => null, // 添加空builder
    routes: [rootRoute, ...globalRoutes],
  );
}
