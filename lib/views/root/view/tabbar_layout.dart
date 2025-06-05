import "package:flutter/material.dart";

import "package:lx_tea/views/root/model/app_tab.dart";

// 面板页面
import "home_pane.dart";
import "trend_pane.dart";
import "material_pane.dart";
import "account_pane.dart";

// 子组件
import "../widgets/pure_bottom_bar.dart";

class TabbarLayout extends StatefulWidget {
  const TabbarLayout({super.key});

  @override
  State<TabbarLayout> createState() => _TabbarLayoutState();
}

class _TabbarLayoutState extends State<TabbarLayout> {
  // 页面控制器，初始化0
  final PageController _controller = PageController();
  final ValueNotifier<AppTab> _activeTab = ValueNotifier(AppTab.home);

  // 禁止 PageView 滑动
  final ScrollPhysics _neverScroll = const NeverScrollableScrollPhysics();

  @override
  void initState() {
    super.initState();
    // 初始化时可以添加其他逻辑
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      // endDrawer: ,
      body: PageView(
        physics: _neverScroll,
        controller: _controller,
        children: [HomePane(), TrendPane(), MaterialPane(), AccountPane()],
      ),
      bottomNavigationBar: _buildBottomNavBar(),
    );
  }

  // 底部导航栏
  Widget _buildBottomNavBar() {
    return Stack(
      children: [
        ValueListenableBuilder(
          valueListenable: _activeTab,
          builder:
              (_, value, __) =>
                  PureBottomBar(onTap: _onTapBottomNav, activeTab: value),
        ),
      ],
    );
  }

  // tabbar切换点击
  void _onTapBottomNav(int index) {
    _controller.jumpToPage(index);
    _activeTab.value = AppTab.values[index];
  }
}
