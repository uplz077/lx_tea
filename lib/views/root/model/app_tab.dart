import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum AppTab {
  home('/home', 'assets/images/home.png', 'assets/images/home_a.png'),
  trend('/trend', 'assets/images/trend.png', 'assets/images/trend_a.png'),
  material(
    '/material',
    'assets/images/material.png',
    'assets/images/material_a.png',
  ),
  account(
    '/account',
    'assets/images/account.png',
    'assets/images/account_a.png',
  );

  final String path;
  final String iconPath;
  final String activeIconPath;

  const AppTab(this.path, this.iconPath, this.activeIconPath);

  Image get icon =>
      Image.asset(iconPath, width: 22, height: 22, fit: BoxFit.cover);
  Image get activeIcon =>
      Image.asset(activeIconPath, width: 22, height: 22, fit: BoxFit.cover);

  static List<AppTab> get tabItems => [home, trend, material, account];

  String label() {
    return switch (this) {
      AppTab.home => '首页',
      AppTab.trend => '动态',
      AppTab.material => '素材',
      AppTab.account => '我的',
    };
  }
}
