import 'package:get/get.dart';
import 'package:music/utils/api/kw_temp_search_entity.dart';
import 'package:music/utils/utils.dart';

import '../../utils/net/http_manager.dart';
import 'state.dart';

class SearchLogic extends GetxController {
  final SearchState state = SearchState();

  Future<KwTempSearchEntity> tempSearch(String key) async {
    Map<String, dynamic> body = {};
    body["key"] = key;
    body["_"] = getCurrentTime();
    var result = await HttpManager.getInstance().client.search(body);
    print(result);
    return result;
  }

  void search(String key) {
    tempSearch(key);
  }
}
