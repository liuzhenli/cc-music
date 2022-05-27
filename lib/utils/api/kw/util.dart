import 'package:dio/dio.dart';
import 'package:music/utils/sp_util.dart';

import '../../net/address.dart';
import '../../sp_const.dart';
import '../../utils.dart';

class KwUtil {
  static Future<void> getToken() async {
    //请求头
    Options options = Options(headers: {
      "user-agent":
          "Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36",
      "_": getCurrentTime(),
    });


    Response response = await Dio().get(Address.baseUrl, options: options);

    RegExp exp = RegExp("kw_token=(\\w+)");
    response.headers.forEach((key, value) {
      if (exp.hasMatch(value.toString())) {
        String? pair = exp.stringMatch(value.toString());
        if (pair?.split("=").length == 2) {
          var kwToken = pair?.split("=")[1];
          print("kw-token=$kwToken");
          SpUti.write(SpConstants.kwToken, kwToken);
        }
      }
    });
  }
}
