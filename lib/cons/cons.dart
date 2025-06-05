import 'package:flutter/material.dart';

enum ThemeColor {
  red(Colors.red),
  orange(Colors.orange),
  yellow(Colors.yellow),
  green(Colors.green),
  blue(Colors.blue),
  indigo(Colors.indigo),
  purple(Colors.purple),
  dark(
    MaterialColor(0xff2D2D2D, <int, Color>{
      50: Color(0xFF8A8A8A),
      100: Color(0xFF747474),
      200: Color(0xFF616161),
      300: Color(0xFF484848),
      400: Color(0xFF3D3D3D),
      500: Color(0xff2D2D2D),
      600: Color(0xFF252525),
      700: Color(0xFF141414),
      800: Color(0xFF050505),
      900: Color(0xff000000),
    }),
  );

  final MaterialColor color;

  const ThemeColor(this.color);

  // String label(BuildContext context){
  //   return switch(this){
  //     ThemeColor.red => context.l10n.destructionRed, // 毁灭之红
  //     ThemeColor.orange => context.l10n.rageOrange // 愤怒之橙
  //     ...
  //   };
  // }
}
