import "package:go_router/go_router.dart";
import "route_types.dart";

// 页面
import "package:lx_tea/views/root/view/tabbar_layout.dart";

GoRoute get rootRoute => GoRoute(
  path: AppRoute.root.path,
  builder: (_, __) => TabbarLayout(),
  routes: [
    // GoRoute(path: AppRoute.widgetDetail.path, builder: widgetDetailBuilder),
  ],
);
