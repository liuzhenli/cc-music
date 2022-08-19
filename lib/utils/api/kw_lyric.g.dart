// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kw_lyric.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KwLyric _$KwLyricFromJson(Map<String, dynamic> json) => KwLyric(
      Data.fromJson(json['data'] as Map<String, dynamic>),
      json['msg'] as String,
      json['profileid'] as String,
      json['reqid'] as String,
      json['status'] as int,
    );

Map<String, dynamic> _$KwLyricToJson(KwLyric instance) => <String, dynamic>{
      'data': instance.data,
      'msg': instance.msg,
      'profileid': instance.profileid,
      'reqid': instance.reqid,
      'status': instance.status,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      (json['lrclist'] as List<dynamic>?)
          ?.map((e) => Lrclist.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['simpl'] == null
          ? null
          : Simpl.fromJson(json['simpl'] as Map<String, dynamic>),
      json['songinfo'] == null
          ? null
          : Songinfo.fromJson(json['songinfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'lrclist': instance.lrclist,
      'simpl': instance.simpl,
      'songinfo': instance.songinfo,
    };

Lrclist _$LrclistFromJson(Map<String, dynamic> json) => Lrclist(
      json['lineLyric'] as String,
      json['time'] as String,
    );

Map<String, dynamic> _$LrclistToJson(Lrclist instance) => <String, dynamic>{
      'lineLyric': instance.lineLyric,
      'time': instance.time,
    };

Simpl _$SimplFromJson(Map<String, dynamic> json) => Simpl(
      (json['musiclist'] as List<dynamic>)
          .map((e) => Musiclist.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['playlist'] as List<dynamic>)
          .map((e) => Playlist.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SimplToJson(Simpl instance) => <String, dynamic>{
      'musiclist': instance.musiclist,
      'playlist': instance.playlist,
    };

Musiclist _$MusiclistFromJson(Map<String, dynamic> json) => Musiclist(
      json['album'] as String,
      json['albumId'] as String,
      json['artist'] as String,
      json['artistId'] as String,
      (json['coopFormats'] as List<dynamic>).map((e) => e as String).toList(),
      json['copyRight'] as String,
      json['duration'] as String,
      json['formats'] as String,
      json['hasMv'] as String,
      json['id'] as String,
      json['isstar'] as String,
      json['mp3Size'] as String,
      json['mp4sig1'] as String,
      json['mp4sig2'] as String,
      json['musicrId'] as String,
      json['online'] as String,
      json['params'] as String,
      json['pay'] as String,
      json['pic'] as String,
      json['playCnt'] as String,
      json['songName'] as String,
      json['songTimeMinutes'] as String,
    );

Map<String, dynamic> _$MusiclistToJson(Musiclist instance) => <String, dynamic>{
      'album': instance.album,
      'albumId': instance.albumId,
      'artist': instance.artist,
      'artistId': instance.artistId,
      'coopFormats': instance.coopFormats,
      'copyRight': instance.copyRight,
      'duration': instance.duration,
      'formats': instance.formats,
      'hasMv': instance.hasMv,
      'id': instance.id,
      'isstar': instance.isstar,
      'mp3Size': instance.mp3Size,
      'mp4sig1': instance.mp4sig1,
      'mp4sig2': instance.mp4sig2,
      'musicrId': instance.musicrId,
      'online': instance.online,
      'params': instance.params,
      'pay': instance.pay,
      'pic': instance.pic,
      'playCnt': instance.playCnt,
      'songName': instance.songName,
      'songTimeMinutes': instance.songTimeMinutes,
    };

Playlist _$PlaylistFromJson(Map<String, dynamic> json) => Playlist(
      json['digest'] as String,
      json['disname'] as String,
      json['extend'] as String,
      json['info'] as String,
      json['isnew'] as String,
      json['name'] as String,
      json['newcount'] as String,
      json['nodeid'] as String,
      json['pic'] as String,
      json['playcnt'] as String,
      json['source'] as String,
      json['sourceid'] as String,
      json['tag'] as String,
    );

Map<String, dynamic> _$PlaylistToJson(Playlist instance) => <String, dynamic>{
      'digest': instance.digest,
      'disname': instance.disname,
      'extend': instance.extend,
      'info': instance.info,
      'isnew': instance.isnew,
      'name': instance.name,
      'newcount': instance.newcount,
      'nodeid': instance.nodeid,
      'pic': instance.pic,
      'playcnt': instance.playcnt,
      'source': instance.source,
      'sourceid': instance.sourceid,
      'tag': instance.tag,
    };

Songinfo _$SonginfoFromJson(Map<String, dynamic> json) => Songinfo(
      json['album'] as String,
      json['albumId'] as String,
      json['artist'] as String,
      json['artistId'] as String,
      json['contentType'] as String,
      (json['coopFormats'] as List<dynamic>).map((e) => e as String).toList(),
      json['copyRight'] as String,
      json['duration'] as String,
      json['formats'] as String,
      json['hasMv'] as String,
      json['id'] as String,
      json['isPoint'] as String,
      json['isdownload'] as String,
      json['isstar'] as String,
      json['mkvNsig1'] as String,
      json['mkvNsig2'] as String,
      json['mkvRid'] as String,
      json['mp3Nsig1'] as String,
      json['mp3Nsig2'] as String,
      json['mp3Rid'] as String,
      json['mp3Size'] as String,
      json['mp4sig1'] as String,
      json['mp4sig2'] as String,
      json['musicrId'] as String,
      json['mutiVer'] as String,
      json['nsig1'] as String,
      json['nsig2'] as String,
      json['online'] as String,
      json['pay'] as String,
      json['pic'] as String,
      json['playCnt'] as String,
      json['score100'] as String,
      json['songName'] as String,
      json['songTimeMinutes'] as String,
      json['upTime'] as String,
      json['uploader'] as String,
    );

Map<String, dynamic> _$SonginfoToJson(Songinfo instance) => <String, dynamic>{
      'album': instance.album,
      'albumId': instance.albumId,
      'artist': instance.artist,
      'artistId': instance.artistId,
      'contentType': instance.contentType,
      'coopFormats': instance.coopFormats,
      'copyRight': instance.copyRight,
      'duration': instance.duration,
      'formats': instance.formats,
      'hasMv': instance.hasMv,
      'id': instance.id,
      'isPoint': instance.isPoint,
      'isdownload': instance.isdownload,
      'isstar': instance.isstar,
      'mkvNsig1': instance.mkvNsig1,
      'mkvNsig2': instance.mkvNsig2,
      'mkvRid': instance.mkvRid,
      'mp3Nsig1': instance.mp3Nsig1,
      'mp3Nsig2': instance.mp3Nsig2,
      'mp3Rid': instance.mp3Rid,
      'mp3Size': instance.mp3Size,
      'mp4sig1': instance.mp4sig1,
      'mp4sig2': instance.mp4sig2,
      'musicrId': instance.musicrId,
      'mutiVer': instance.mutiVer,
      'nsig1': instance.nsig1,
      'nsig2': instance.nsig2,
      'online': instance.online,
      'pay': instance.pay,
      'pic': instance.pic,
      'playCnt': instance.playCnt,
      'score100': instance.score100,
      'songName': instance.songName,
      'songTimeMinutes': instance.songTimeMinutes,
      'upTime': instance.upTime,
      'uploader': instance.uploader,
    };
