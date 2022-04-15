import 'package:flutter/cupertino.dart';

class MainState {
  ///选择index
  late int tabIndex;
  bool isInit = false;


  ///PageView页面
  late List<Widget> pageList;
  MainState() {
    //初始化index
    tabIndex = 1;
    //PageView页面
    pageList = [

    ];

  }
}
