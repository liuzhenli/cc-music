import 'package:music/generated/json/base/json_convert_content.dart';
import 'package:music/utils/api/kw_temp_search_entity.dart';

KwTempSearchEntity $KwTempSearchEntityFromJson(Map<String, dynamic> json) {
	final KwTempSearchEntity kwTempSearchEntity = KwTempSearchEntity();
	final int? code = jsonConvert.convert<int>(json['code']);
	if (code != null) {
		kwTempSearchEntity.code = code;
	}
	final int? curTime = jsonConvert.convert<int>(json['curTime']);
	if (curTime != null) {
		kwTempSearchEntity.curTime = curTime;
	}
	final List<String>? data = jsonConvert.convertListNotNull<String>(json['data']);
	if (data != null) {
		kwTempSearchEntity.data = data;
	}
	final String? msg = jsonConvert.convert<String>(json['msg']);
	if (msg != null) {
		kwTempSearchEntity.msg = msg;
	}
	final String? profileId = jsonConvert.convert<String>(json['profileId']);
	if (profileId != null) {
		kwTempSearchEntity.profileId = profileId;
	}
	final String? reqId = jsonConvert.convert<String>(json['reqId']);
	if (reqId != null) {
		kwTempSearchEntity.reqId = reqId;
	}
	final String? tId = jsonConvert.convert<String>(json['tId']);
	if (tId != null) {
		kwTempSearchEntity.tId = tId;
	}
	return kwTempSearchEntity;
}

Map<String, dynamic> $KwTempSearchEntityToJson(KwTempSearchEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['code'] = entity.code;
	data['curTime'] = entity.curTime;
	data['data'] =  entity.data;
	data['msg'] = entity.msg;
	data['profileId'] = entity.profileId;
	data['reqId'] = entity.reqId;
	data['tId'] = entity.tId;
	return data;
}