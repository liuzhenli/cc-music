import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music/pages/musics/view.dart';
import 'package:music/pages/rank/view.dart';

import '../../app/init_config.dart';
import 'state.dart';

class MainLogic extends  GetxController with GetSingleTickerProviderStateMixin{
final state = MainState();

TabController ?tabController;
MusicsPage? recommendPage;

@override
void onInit() async{
  ///初始化应用信息
  InitConfig.initApp(Get.context);
  state.isInit = true;
  tabController = TabController(vsync: this,initialIndex: 1, length: 4);
  update();
  super.onInit();

}


void switchTapController(int index){
  tabController?.index = index;
  switchTap(index);
}

///切换tab
void switchTap(int index) {
  state.tabIndex = index;

  MusicsPage mainLogic = Get.find<MusicsPage>();
  if (index == 1) {
    mainLogic.viewAppear();
  } else {
    mainLogic.viewDisAppear();
  }

  //点击我的页面,刷新用户信息
  RankPage mineLogic = Get.find<RankPage>();
  if (index == 2) {
    mineLogic.onResume();
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