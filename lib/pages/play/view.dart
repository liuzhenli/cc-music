import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class PlayPage extends StatelessWidget {
  final logic = Get.put(PlayLogic());
  final state = Get.find<PlayLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
