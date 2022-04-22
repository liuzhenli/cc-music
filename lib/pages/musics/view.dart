import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class MusicsPage extends StatelessWidget {
  final logic = Get.put(MusicsLogic());
  final state = Get.find<MusicsLogic>().state;

   MusicsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
