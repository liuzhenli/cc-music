import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../base/colors.dart';
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
          buildBottomNavigationBarItem(
              FluentIcons.search_48_regular, FluentIcons.search_48_filled),
          buildBottomNavigationBarItem(FluentIcons.music_note_2_24_regular,
              FluentIcons.music_note_2_24_filled),
          buildBottomNavigationBarItem(
              FluentIcons.poll_24_regular, FluentIcons.poll_24_filled),
          buildBottomNavigationBarItem(
              FluentIcons.heart_48_regular, FluentIcons.heart_48_filled),
          buildBottomNavigationBarItem(
              FluentIcons.settings_48_regular, FluentIcons.settings_48_filled),
        ],
        backgroundColor: Colors.white,
        currentIndex: state.tabIndex,
        inactiveColor: UiColor.text_33,
        activeColor: UiColor.main,
        onTap: (index) {
          logic.switchTap(index);
        });
  }

  BottomNavigationBarItem buildBottomNavigationBarItem(regular, filled) {
    return BottomNavigationBarItem(
      activeIcon: Icon(filled),
      icon: Icon(regular),
    );
  }
}
