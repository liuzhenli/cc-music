import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music/theme/themes/base_theme.dart';
import 'package:music/theme/themes/black.dart';
import 'package:music/theme/themes/blue.dart';
import 'package:music/theme/themes/grey.dart';
import 'package:music/theme/themes/orange.dart';
import 'package:music/theme/themes/pink.dart';
import 'package:music/theme/themes/red.dart';
import 'package:music/utils/sp_const.dart';

ThemeData getThemeData(MusicTheme themeColor) {
  TextTheme textTheme = TextTheme(
    //多主题通用
    displayLarge: TextStyle(
        fontSize: 20,
        color: themeColor.normal,
        decoration: TextDecoration.none),
    displayMedium: TextStyle(
        fontSize: 16,
        color: themeColor.normal20,
        decoration: TextDecoration.none),
    displaySmall: TextStyle(
        fontSize: 12,
        color: themeColor.normal40,
        decoration: TextDecoration.none),
    headlineLarge: TextStyle(
        fontSize: 20,
        color: themeColor.normal20,
        decoration: TextDecoration.none),
    headlineMedium: TextStyle(
        fontSize: 16,
        color: themeColor.normal20,
        decoration: TextDecoration.none),
    headlineSmall: TextStyle(
        fontSize: 12,
        color: themeColor.normal20,
        decoration: TextDecoration.none),
    bodyLarge: TextStyle(
        fontSize: 20,
        color: themeColor.normal20,
        decoration: TextDecoration.none),
    bodyMedium: TextStyle(
        fontSize: 16,
        color: themeColor.normal20,
        decoration: TextDecoration.none),
    bodySmall: TextStyle(
        fontSize: 12,
        color: themeColor.normal20,
        decoration: TextDecoration.none),
    titleLarge: TextStyle(
        fontSize: 20,
        color: themeColor.secondary_5,
        decoration: TextDecoration.none),
    titleMedium: TextStyle(
        fontSize: 16,
        color: themeColor.secondary_5,
        decoration: TextDecoration.none),
    titleSmall: TextStyle(
        fontSize: 12,
        color: themeColor.secondary_5,
        decoration: TextDecoration.none),
    labelLarge: TextStyle(
        fontSize: 20,
        color: themeColor.secondary_5,
        decoration: TextDecoration.none),
    labelMedium: TextStyle(
        fontSize: 16,
        color: themeColor.secondary_5,
        decoration: TextDecoration.none),
    labelSmall: TextStyle(
        fontSize: 12,
        color: themeColor.secondary_5,
        decoration: TextDecoration.none),
  );
  return ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xffF3F5F8),
      centerTitle: true,
      foregroundColor: Color(0xff000000),
      actionsIconTheme: IconThemeData(color: Color(0xff000000)),
    ),
    //主色调
    primaryColor: themeColor.secondary_5,

    backgroundColor: themeColor.primary,
    //背景色
    cardColor: Color(0xffffffff),
    accentColor: Color(0xffffffff),
    //背景上卡片背景色
    dividerColor: Color(0xffe0e0e1),
    //分割线
    dialogBackgroundColor: Color(0xffffffff),
    //弹层背景色
    primaryColorDark: Color(0xffffffff),
    //图标颜色
    buttonColor: themeColor.secondary_5,
    //按钮颜色
    textSelectionColor: Color(0xfff3f5f8),
    //按钮上文按钮上文字颜色字颜色
    highlightColor: Color(0xffECEFF3),
    hintColor: Color(0xffECEFF3),
    disabledColor: Color(0xff000000),
    scaffoldBackgroundColor: Color(0xffD9DCE2),
    brightness: Brightness.light,
    textTheme:
        Platform.isIOS ? GoogleFonts.latoTextTheme(textTheme) : textTheme,
    unselectedWidgetColor: Colors.white,
    //悬停
    hoverColor: Color(0xffc9c9c9),
    //图标未选中色
    toggleableActiveColor: themeColor.secondary30, //图标选中色
  );
}

changeTheme(int themeMode) {
  if (themeMode <= 0) {
    themeMode = MusicThemeMode.orange;
  }
  if (themeMode == MusicThemeMode.black) {
    Get.changeTheme(getThemeData(BlackTheme()));
    Get.changeThemeMode(ThemeMode.dark);
  } else if (themeMode == MusicThemeMode.blue) {
    Get.changeTheme(getThemeData(BlueTheme()));
    Get.changeThemeMode(ThemeMode.light);
  } else if (themeMode == MusicThemeMode.grey) {
    Get.changeTheme(getThemeData(GreyTheme()));
    Get.changeThemeMode(ThemeMode.light);
  } else if (themeMode == MusicThemeMode.orange) {
    Get.changeTheme(getThemeData(OrangeTheme()));
    Get.changeThemeMode(ThemeMode.light);
  } else if (themeMode == MusicThemeMode.pink) {
    Get.changeTheme(getThemeData(PinkTheme()));
    Get.changeThemeMode(ThemeMode.light);
  } else if (themeMode == MusicThemeMode.red) {
    Get.changeTheme(getThemeData(RedTheme()));
    Get.changeThemeMode(ThemeMode.light);
  }

  GetStorage().write(SpConstants.ThemeMode, themeMode);
  Get.changeThemeMode(ThemeMode.dark);
  Future.delayed(const Duration(milliseconds: 500), () {
    //强制触发 build
    Get.forceAppUpdate();
  });
}

class MusicThemeMode {
  static const blue = 1;
  static const green = 2;
  static const grey = 3;
  static const orange = 4;
  static const pink = 5;
  static const red = 6;
  static const black = 7;
}
