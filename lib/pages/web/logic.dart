import 'package:get/get.dart';

import 'state.dart';

class WebLogic extends GetxController {
  final WebState state = WebState();

  @override
  void onInit() {
    super.onInit();
    state.url = Get.parameters['url'].toString();
    state.pageTitle = Get.parameters['pageTitle'].toString();
  }
}
