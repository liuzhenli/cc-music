// import 'dart:convert';
// import 'package:music/generated/json/base/json_field.dart';
// import 'package:music/generated/json/kw_temp_search_entity.g.dart';

// @JsonSerializable()
// class KwTempSearchEntity {
//   int? code;
//   int? curTime;
//   List<String>? data;
//   String? msg;
//   String? profileId;
//   String? reqId;
//   String? tId;
//
//   KwTempSearchEntity();
//
//   factory KwTempSearchEntity.fromJson(Map<String, dynamic> json) =>
//       $KwTempSearchEntityFromJson(json);
//
//   Map<String, dynamic> toJson() => $KwTempSearchEntityToJson(this);
//
//   @override
//   String toString() {
//     return jsonEncode(this);
//   }
//
// }


import 'package:json_annotation/json_annotation.dart';

part 'kw_temp_search_entity.g.dart';


@JsonSerializable()
class KwTempSearchEntity extends Object {

  @JsonKey(name: 'code')
  int code;

  @JsonKey(name: 'curTime')
  int curTime;

  @JsonKey(name: 'data')
  List<String> data;

  @JsonKey(name: 'msg')
  String msg;

  @JsonKey(name: 'profileId')
  String profileId;

  @JsonKey(name: 'reqId')
  String reqId;

  @JsonKey(name: 'tId')
  String tId;

  KwTempSearchEntity(this.code,this.curTime,this.data,this.msg,this.profileId,this.reqId,this.tId,);

  factory KwTempSearchEntity.fromJson(Map<String, dynamic> srcJson) => _$KwTempSearchEntityFromJson(srcJson);

  Map<String, dynamic> toJson() => _$KwTempSearchEntityToJson(this);


  List<String> getData() {
    List<String> items = <String>[];
    if (data == null) {
      return [];
    } else {
      RegExp exp = RegExp("RELWORD=(.+)");
      //"data":["RELWORD=很爱很爱你\r\nSNUM=5996\r\nRNUM=1000\r\nTYPE=0","RELWORD=很爱很爱你  刘若英\r\nSNUM=934\r\nRNUM=1000\r\nTYPE=0"]
      //"data": ["伪善者", "小城夏天", "等不来花开", "妈妈的话", "耍把戏", "望", "归去来", "我们都是孤单的人", "我来人间一趟", "愿你"]
      //"data": [],
      for (String name in data) {
        if (exp.hasMatch(name)) {
          items.add(exp.stringMatch(name)?.split("=")[1] ?? "");
        } else {
          items.add(name);
        }
      }
      return items;
    }
  }

}



