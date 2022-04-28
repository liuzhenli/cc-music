import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:music/utils/ui/appbar.dart';

import '../../utils/sp_const.dart';
import 'logic.dart';

class SettingsPage extends StatelessWidget {
  final logic = Get.put(SettingsLogic());
  final state = Get.find<SettingsLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIAppBar.buildAppBar(""),
      body: Container(
        child: GestureDetector(
          child: Text("设置代理"),
          onTap: () => {
            showProxyDialog("设置代理", context, (text) {
              GetStorage box = GetStorage();
              box.write(SpConstants.PROXY, text);
            })
          },
        ),
      ),
    );
  }

  void showProxyDialog(
      String title, BuildContext context, void Function(String text) callBack) {
    final ValueNotifier<int> _counter = ValueNotifier<int>(0);
    int maxCount = 12;
    final controller = TextEditingController()..text = "";
    showCupertinoDialog(
        context: context,
        builder: (BuildContext context) {
          return CupertinoAlertDialog(
            title: Text(title),
            content: Column(
              children: <Widget>[
                Card(
                  child: CupertinoTextField(
                    onChanged: (value) {
                      _counter.value += 1;
                    },
                    controller: controller,
                    placeholder: null,
                  ),
                ),
                ValueListenableBuilder(
                  builder: (BuildContext context, int value, Widget? child) {
                    // 只有在更新计数器时才会调用此生成器。
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text((controller.text.length.toString()) + "/$maxCount",
                            textAlign: TextAlign.end),
                      ],
                    );
                  },
                  valueListenable: _counter,
                ),
              ],
            ),
            actions: <Widget>[
              CupertinoDialogAction(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('取消'),
              ),
              CupertinoDialogAction(
                onPressed: () {
                  Navigator.pop(context);
                  callBack(controller.text);
                },
                child: const Text('确定'),
              ),
            ],
          );
        });
  }
}
