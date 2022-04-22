
class ResultData {
  var data;

  String? msg;
  String? exception;
  int? code;
  num? sysTime;


  bool? isSuccess;
  var headers;

  ResultData(this.data, this.isSuccess, this.code, {this.headers});


}