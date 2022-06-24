import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:music/utils/utils.dart';

import '../../utils/net/address.dart';
import '../../utils/net/http_manager.dart';
import '../../utils/sp_const.dart';
import '../../utils/sp_util.dart';
import 'state.dart';

class SearchLogic extends GetxController {
  final SearchState state = SearchState();

  Future<void> tempSearch(String key) async {
    Map<String, dynamic> body = {};
    body["key"] = key;
    body["_"] = getCurrentTime();

    var headers = <String,dynamic>{};
    headers["csrf"] = SpUti.read(SpConstants.kwToken);
    headers["accept"] = Headers.jsonContentType;
    headers["referer"] = "${Address.baseUrl}/";
    var result = await HttpManager.getInstance().client.search(body);
    state.kwTips = result;
    update();
  }

  void search(String key) {
    tempSearch(key);
  }
}
