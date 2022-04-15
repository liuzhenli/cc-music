import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class SavePage extends StatelessWidget {
  final logic = Get.put(SaveLogic());
  final state = Get.find<SaveLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
