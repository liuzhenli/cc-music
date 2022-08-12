// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kw_temp_search_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KwTempSearchEntity _$KwTempSearchEntityFromJson(Map<String, dynamic> json) =>
    KwTempSearchEntity(
      json['code'] as int,
      json['curTime'] as int,
      (json['data'] as List<dynamic>).map((e) => e as String).toList(),
      json['msg'] as String,
      json['profileId'] as String,
      json['reqId'] as String,
      json['tId'] as String,
    );

Map<String, dynamic> _$KwTempSearchEntityToJson(KwTempSearchEntity instance) =>
    <String, dynamic>{
      'code': instance.code,
      'curTime': instance.curTime,
      'data': instance.data,
      'msg': instance.msg,
      'profileId': instance.profileId,
      'reqId': instance.reqId,
      'tId': instance.tId,
    };
