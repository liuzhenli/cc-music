import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class RankPage extends StatelessWidget {
  final logic = Get.put(RankLogic());
  final state = Get.find<RankLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  void onResume() {}
}
