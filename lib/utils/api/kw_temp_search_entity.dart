import 'dart:convert';
import 'package:music/generated/json/base/json_field.dart';
import 'package:music/generated/json/kw_temp_search_entity.g.dart';

@JsonSerializable()
class KwTempSearchEntity {

	int? code;
	int? curTime;
	List<String>? data;
	String? msg;
	String? profileId;
	String? reqId;
	String? tId;
  
  KwTempSearchEntity();

  factory KwTempSearchEntity.fromJson(Map<String, dynamic> json) => $KwTempSearchEntityFromJson(json);

  Map<String, dynamic> toJson() => $KwTempSearchEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}