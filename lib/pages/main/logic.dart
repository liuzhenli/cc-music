import 'package:flutter/material.dart';
import 'package:flutter_toolkit_easy/flutter_toolkit.dart';
import 'package:get/get.dart';
import 'package:music/pages/musics/logic.dart';
import 'package:music/pages/musics/view.dart';
import 'package:music/pages/rank/logic.dart';
import 'package:music/pages/rank/view.dart';
import 'package:music/pages/search/view.dart';
import 'package:music/pages/settings/view.dart';

import '../../app/init_config.dart';
import 'state.dart';

class MainLogic extends GetxController with GetSingleTickerProviderStateMixin {
  final state = MainState();

  TabController? tabController;
  MusicsPage? recommendPage;

  @override
  void onInit() async {
    ///初始化应用信息
    InitConfig.initApp(Get.context);
    state.isInit = true;
    tabController = TabController(vsync: this, initialIndex: 1, length: 4);
    state.pageList = [
      KeepAlivePage(SearchPage()),
      KeepAlivePage(MusicsPage()),
      KeepAlivePage(RankPage()),
      KeepAlivePage(SettingsPage()),
    ];
    update();
    super.onInit();
  }

  void switchTapController(int index) {
    tabController?.index = index;
    switchTap(index);
  }

  ///切换tab
  void switchTap(int index) {
    state.tabIndex = index;

    MusicsLogic musicsLogic = Get.find<MusicsLogic>();
    if (index == 1) {
      musicsLogic.viewAppear();
    } else {
      musicsLogic.viewDisAppear();
    }

    //点击我的页面,刷新用户信息
    RankLogic rankLogic = Get.find<RankLogic>();
    if (index == 2) {
      rankLogic.onResume();
    }
    update();
  }

  /// 主页tab 背景色
  Color getTabBackgroundColor() {
    if (state.tabIndex == 2) {
      return Colors.black;
    } else {
      return Colors.white;
    }
  }
}
