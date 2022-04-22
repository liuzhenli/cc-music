import 'package:dio/dio.dart';
import 'package:get_storage/get_storage.dart';
import '../utils.dart';
import 'app_exception.dart';

class LogsInterceptors extends InterceptorsWrapper {
  @override
  onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    print("请求baseUrl：${options.baseUrl}${options.path}");
    if (options.method == "GET") {
       print('请求参数: ' + options.queryParameters.toString());
    }
    if (options.method == "POST") {
       print('请求参数: ' + options.data.toString());
    }
     print('请求头: ' + options.headers.toString());

    GetStorage box = GetStorage();
    var token = box.read("token");
    if (token != null) {
      options.headers["Authorization"] = "Bearer ${token}";
    }
    if (options.headers.isNotEmpty) {
      // print("headers:" + options.headers.toString());
    }
    int millisecondsSinceEpoch = getCurrentTime();
    options.queryParameters['_'] = millisecondsSinceEpoch;
    handler.next(options);
  }

  @override
  onResponse(Response response, ResponseInterceptorHandler handler) async {
    if (response != null) {
      var responseStr = response.toString();
       print("响应: " +responseStr);
    }
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
