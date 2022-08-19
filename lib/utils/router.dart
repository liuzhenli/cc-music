import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:music/pages/main/view.dart';

import '../pages/play/view.dart';

class MusicRouter {
  static const String main = "/main";
  static const String play = "/play";
  static final List<GetPage> getPages = [
    GetPage(name: main, page: () => MainPage()),
    GetPage(name: play, page: () => PlayPage()),
  ];
}
