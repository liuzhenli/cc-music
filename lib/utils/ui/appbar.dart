import 'package:flutter/material.dart';
import 'package:music/base/colors.dart';

class UIAppBar {
  static AppBar buildAppBar(
      [String title = "标题",
      Color shadowColor = UiColor.text_99_11,
      Color backGroundColor = Colors.white]) {
    return AppBar(
      iconTheme: ThemeData().iconTheme,
      shadowColor: shadowColor,
      backgroundColor: backGroundColor,
      centerTitle: true,
      title: Text(
        title,
        style: ThemeData().textTheme.titleLarge,
      ),
    );
  }
}
