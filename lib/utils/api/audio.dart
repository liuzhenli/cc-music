import 'package:json_annotation/json_annotation.dart';

part 'audio.g.dart';


@JsonSerializable()
class Audio extends Object {

  @JsonKey(name: 'code')
  int code;

  @JsonKey(name: 'msg')
  String msg;

  @JsonKey(name: 'data')
  String data;

  Audio(this.code,this.msg,this.data,);

  factory Audio.fromJson(Map<String, dynamic> srcJson) => _$AudioFromJson(srcJson);

  Map<String, dynamic> toJson() => _$AudioToJson(this);

}


