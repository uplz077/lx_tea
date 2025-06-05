import 'package:flutter/material.dart';
import '../model/app_tab.dart';

class PureBottomBar extends StatelessWidget {
  final ValueChanged<int>? onTap;
  final AppTab activeTab;

  const PureBottomBar({super.key, this.onTap, required this.activeTab});

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 10, fontWeight: FontWeight.normal);

    return Theme(
      data: ThemeData(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      child: BottomNavigationBar(
        onTap: onTap,
        currentIndex: activeTab.index,
        elevation: 3,
        type: BottomNavigationBarType.fixed,
        iconSize: 22,
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: textStyle,
        unselectedLabelStyle: textStyle,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        items:
            AppTab.tabItems.map((tab) {
              return BottomNavigationBarItem(
                icon: tab.icon,
                activeIcon: tab.activeIcon,
                label: tab.label(),
              );
            }).toList(),
      ),
    );
  }
}
