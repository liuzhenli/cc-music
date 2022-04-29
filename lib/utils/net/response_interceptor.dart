import 'package:dio/dio.dart';

import 'app_exception.dart';

class ResponseInterceptors extends InterceptorsWrapper {

//  @override
//  Future onResponse(Response response) {
//    // TODO: implement onResponse
//    return super.onResponse(response);
//  }
  @override
  onResponse(Response response,ResponseInterceptorHandler handler) async {
    RequestOptions option = response.requestOptions;


//      if (option.contentType != null && option.contentType.contains("text")) {
//        return new ResultData(response.data, true, 200);
//      }

      ///一般只需要处理200的情况，300、400、500保留错误信息，外层为http协议定义的响应码
      if (response.statusCode == 200 || response.statusCode == 201) {
        ///内层需要根据公司实际返回结构解析，一般会有code，data，msg字段
        //int code = response.data["code"];
        handler.next(response);
        return;
        // if (code == 0) {
        //     handler.next(response);
        // } else {
        //   var dioError = DioError(type: DioErrorType.response,error: AppException(code,response.data["msg"]??'unknown error'), requestOptions: option);
        //   throw dioError;
        //
        // }
      }

  }


}
