import 'package:get/get_connect/http/src/response/response.dart';
import 'package:get_storage/get_storage.dart';
import 'package:music/utils/net/http_manager.dart';
import 'package:music/utils/sp_util.dart';

import '../../net/address.dart';
import '../../sp_const.dart';

class KwUtil {
  static Future<void> getToken() async {
    Response response = (await HttpManager.getInstance(baseUrl: Address.baseUrl)
        .client
        .request()) as Response;
    RegExp exp = RegExp("kw_token=(\\w+)");
    response.headers?.forEach((key, value) {
      print("111111");
      if (exp.hasMatch(value.toString())) {
        String? pair = exp.stringMatch(value.toString());
        if (pair?.split("=").length == 2) {
          print("111111");
          SpUti.write(SpConstants.kwToken ,pair?.split("=")[1]);
          print(pair?.split("=")[1]);
        }
      }
    });
  }
}
