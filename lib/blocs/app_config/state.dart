import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';

import 'package:lx_tea/cons/cons.dart';

class AppConfig extends Equatable {
  /// [fontFamily] 文字字体
  final String fontFamily;

  /// [themeColor] 主题色
  final ThemeColor themeColor;

  /// [appStyle] app 深色样式;
  final ThemeMode themeMode;

  /// 国际化
  // final Language language;

  const AppConfig({
    this.fontFamily = '宋体',
    // this.language = Language.zh_CN,
    this.themeColor = ThemeColor.blue,
    this.themeMode = ThemeMode.system,
  });

  // String get localeValue => language.locale.toString();

  @override
  List<Object> get props => [themeColor];

  AppConfig copyWith({
    String? fontFamily,
    ThemeColor? themeColor,
    ThemeMode? themeMode,
  }) => AppConfig(
    fontFamily: fontFamily ?? this.fontFamily,
    themeColor: themeColor ?? this.themeColor,
    themeMode: themeMode ?? this.themeMode,
  );

  // 将 AppState 状态数据转换为配置对象，以便存储
  // AppConfigPo toAppConfigPo() => AppConfigPo(
  //       showBackGround: showBackGround,
  //       showOverlayTool: showOverlayTool,
  //       showPerformanceOverlay: showPerformanceOverlay,
  //       fontFamilyIndex: Cons.kFontFamilySupport.indexOf(fontFamily),
  //       themeColorIndex: themeColor.index,
  //       codeStyleIndex: codeStyleIndex,
  //       themeModeIndex: themeMode.index,
  //       itemStyleIndex: itemStyleIndex,
  //       languageIndex: language.index,
  //     );

  // 根据存储的配置信息对象，形成 AppState 状态数据
  // factory AppConfig.fromPo(AppConfigPo po) {
  //   return AppConfig(
  //     fontFamily: Cons.kFontFamilySupport[po.fontFamilyIndex],
  //     themeColor: ThemeColor.values[po.themeColorIndex],
  //     showBackGround: po.showBackGround,
  //     language: Language.values[po.languageIndex],
  //     codeStyleIndex: po.codeStyleIndex,
  //     itemStyleIndex: po.itemStyleIndex,
  //     showPerformanceOverlay: po.showPerformanceOverlay,
  //     showOverlayTool: po.showOverlayTool,
  //     themeMode: ThemeMode.values[po.themeModeIndex],
  //   );
  // }

  @override
  String toString() {
    return 'AppConfigState{fontFamily: $fontFamily, ThemeColor: $themeColor}, themeMode: $themeMode';
  }
}
