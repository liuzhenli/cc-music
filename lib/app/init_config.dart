import 'package:flutter/material.dart';
import 'package:music/utils/api/kw/util.dart';

import '../../utils/ui/auto_ui.dart';

class InitConfig {
  static initApp(BuildContext? context) async {
    //界面适配
    AutoUi().init();
    KwUtil.getToken();
  }
}
