import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:music/theme/theme.dart';
import 'package:music/theme/themes/black.dart';
import 'package:music/theme/themes/blue.dart';
import 'package:music/utils/router.dart';

import 'app/getx_route_observer.dart';

main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'cc music',
      theme: getThemeData(BlueTheme()),
      darkTheme: getThemeData(BlackTheme()),
      initialRoute: MusicRouter.main,
      getPages: MusicRouter.getPages,
      navigatorObservers: [FlutterSmartDialog.observer, GetXRouteObserver()],
    );
  }
}
