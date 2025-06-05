// import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'state.dart';
import 'package:lx_tea/cons/cons.dart';

class AppConfigBloc extends Cubit<AppConfig> {
  AppConfigBloc() : super(const AppConfig());

  // AppConfigCao get cao => SpStorage.instance.appConfig;

  // 切换字体事件处理 : 固化索引 + 产出新状态
  void switchFontFamily(String family) async {
    AppConfig newState = state.copyWith(fontFamily: family);
    // cao.write(newState.toAppConfigPo());
    emit(newState);
  }

  // 切换语言事件处理 : 固化索引 + 产出新状态
  // void switchLanguage(Language language) async {
  //   AppConfig newState = state.copyWith(language: language);
  //   cao.write(newState.toAppConfigPo());
  //   emit(newState);
  // }

  // 切换主题色事件处理 : 固化索引 + 产出新状态
  void switchThemeColor(ThemeColor color) async {
    AppConfig newState = state.copyWith(themeColor: color);
    // cao.write(newState.toAppConfigPo());
    emit(newState);
  }
}
