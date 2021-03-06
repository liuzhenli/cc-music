import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:music/utils/sp_const.dart';
import 'package:music/utils/sp_util.dart';
import '../utils.dart';
import 'app_exception.dart';

class LogsInterceptors extends InterceptorsWrapper {
  @override
  onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    debugPrint("请求Url：${options.baseUrl}${options.path}");
    if (options.method == "GET") {
      debugPrint('请求参数: ' + options.queryParameters.toString());
    }
    if (options.method == "POST") {
      debugPrint('请求参数: ' + options.data.toString());
    }
    debugPrint('请求头: ' + options.headers.toString());

    GetStorage box = GetStorage();
    var token = box.read("token");
    if (token != null) {
      options.headers["Authorization"] = "Bearer $token";
    }
    options.headers["user-agent"] =
        "Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36";

    options.headers["Cookie"] = "kw_token=${SpUti.read(SpConstants.kwToken)}";


    if (options.headers.isNotEmpty) {
      print("headers:" + options.headers.toString());
    }
    int millisecondsSinceEpoch = getCurrentTime();
    options.queryParameters['_'] = millisecondsSinceEpoch;
    handler.next(options);
  }

  @override
  onResponse(Response response, ResponseInterceptorHandler handler) async {
    var responseStr = response.toString();
    debugPrint("响应: " + responseStr);
    handler.next(response);
  }

  @override
  onError(
    DioError err,
    ErrorInterceptorHandler handler,
  ) {
    try {
      print('请求异常: ' + err.toString());
      // print('请求异常信息: ' + err?.response?.toString() ?? "");
    } catch (e) {}
    if (err.error is! AppException) {
      err.error = AppException.create(err);
    }

    handler.next(err);
  }
}
