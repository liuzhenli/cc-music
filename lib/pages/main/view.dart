import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../base/colors.dart';
import '../../iconfonts/iconfonts.dart';
import 'logic.dart';

class MainPage extends StatelessWidget {
  final logic = Get.put(MainLogic());
  final state = Get.find<MainLogic>().state;

  MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return Future.value(true);
      },
      child: GetBuilder<MainLogic>(
        builder: (logic) {
          return Scaffold(
            body: state.isInit
                ? IndexedStack(
                    children: state.pageList,
                    index: state.tabIndex,
                  )
                : const Text("初始化中"),
            bottomNavigationBar:
                state.isInit ? buildCupertinoTabBar() : Container(),
          );
        },
      ),
    );
  }

  CupertinoTabBar buildCupertinoTabBar() {
    return CupertinoTabBar(
        items: [
          buildBottomNavigationBarItem("搜索", IconName.search, IconName.search),
          buildBottomNavigationBarItem("搜索", IconName.setting, IconName.setting),
          buildBottomNavigationBarItem("搜索", IconName.search, IconName.search),
          buildBottomNavigationBarItem("搜索", IconName.search, IconName.search),
        ],
        backgroundColor: Colors.white,
        currentIndex: state.tabIndex,
        inactiveColor: UiColor.text_33,
        activeColor: UiColor.main,
        onTap: (index) {
          logic.switchTap(index);
        });
  }

  BottomNavigationBarItem buildBottomNavigationBarItem(
      label, IconName activeIcon, IconName icon) {
    return BottomNavigationBarItem(
      label: label,
      activeIcon: IconFonts(
        activeIcon,
        color: "#ff5000",
        colors: [],
      ),
      icon: IconFonts(
        icon,
        color: "#ff5000",
        colors: [],
      ),
    );
  }
}
