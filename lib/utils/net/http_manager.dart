import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:get_storage/get_storage.dart';

import '../sp_const.dart';
import 'address.dart';
import 'logs_interceptor.dart';
import 'response_interceptor.dart';
import 'rest_client.dart';

bool get isInDebugMode {
  bool inDebugMode = false;
  assert(inDebugMode = true); //如果debug模式下会触发赋值
  return inDebugMode;
}

class HttpManager {
  static final HttpManager _instance = HttpManager._internal();
  Dio? _dio;
  late RestClient client;

  static const CODE_SUCCESS = 200;
  static const CODE_TIME_OUT = -1;

  factory HttpManager() => _instance;

  ///通用全局单例，第一次使用时初始化
  HttpManager._internal({String? baseUrl}) {
    if (null == _dio) {
      _dio = Dio(BaseOptions(baseUrl: Address.baseUrl, connectTimeout: 15000));
      (_dio?.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
          (client) {
        client.findProxy = (uri) {
          // if(isInDebugMode){
          // 用1个开关设置是否开启代理
          // var string = SpUtil.getString(SpConstants.PROXY);
          GetStorage box = GetStorage();
          var string = box.read(SpConstants.PROXY);
          // string = "192.168.143.2:8888";
          // println("代理地址:" + string);
          // PROXY 192.168.146.25:8888
          if (string != null && string.length > 6) {
            if (string.contains(":")) {
              string = "PROXY " + string;
            } else {
              string = "PROXY " + string + ":8888";
            }
          } else {
            string = 'DIRECT';
          }
          return string;
          // }else{
          //   return 'DIRECT';
          // }
        };
        return null;
      };
      _dio?.interceptors.add(LogsInterceptors());
      _dio?.interceptors.add(ResponseInterceptors());
      client = RestClient(_dio!);
    }
  }

  static HttpManager getInstance({String? baseUrl}) {
    if (baseUrl == null) {
      return _instance._normal();
    } else {
      return _instance._baseUrl(baseUrl);
    }
  }

  ///用于指定特定域名，比如cdn和kline首次的http请求
  HttpManager _baseUrl(String baseUrl) {
    if (_dio != null) {
      _dio?.options.baseUrl = baseUrl;
    }
    return this;
  }

  ///一般请求，默认域名
  HttpManager _normal() {
    if (_dio != null) {
      if (_dio?.options.baseUrl != Address.baseUrl) {
        _dio?.options.baseUrl = Address.baseUrl;
      }
    }
    return this;
  }
}
