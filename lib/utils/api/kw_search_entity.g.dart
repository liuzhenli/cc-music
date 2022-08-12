// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kw_search_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KwSearchEntity _$KwSearchEntityFromJson(Map<String, dynamic> json) =>
    KwSearchEntity(
      (json['abslist'] as List<dynamic>)
          .map((e) => KwMusicInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$KwSearchEntityToJson(KwSearchEntity instance) =>
    <String, dynamic>{
      'abslist': instance.abslist,
    };

KwMusicInfo _$KwMusicInfoFromJson(Map<String, dynamic> json) => KwMusicInfo(
      json['MINFO'] as String?,
      json['SONGNAME'] as String?,
      json['ARTIST'] as String?,
      json['MUSICRID'] as String?,
      json['ALBUMID'] as String?,
      json['DURATION'] as String?,
      json['ALBUM'] as String?,
    );

Map<String, dynamic> _$KwMusicInfoToJson(KwMusicInfo instance) =>
    <String, dynamic>{
      'MINFO': instance.mInfo,
      'SONGNAME': instance.songName,
      'ARTIST': instance.artist,
      'MUSICRID': instance.musicRID,
      'ALBUMID': instance.albumId,
      'DURATION': instance.duration,
      'ALBUM': instance.album,
    };
